class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :teambox_uid, type: Integer
  field :oauth_token, type: String
  field :token, type: String

  embedded_in :setting
  has_many :proposals
  embeds_many :projects

  def fetch_projects
    client = OAuth2::Client.new(Rails.configuration.teambox[:key], Rails.configuration.teambox[:secret], :site => 'https://teambox.com')
    access = OAuth2::AccessToken.new(client, self.oauth_token)

    remote_projects = Hashie::Mash.new JSON.parse(access.get('/api/1/projects').response.body)
    projects_ids = remote_projects.objects.map(&:id)
    projects.not_in(project_id: projects_ids).update_all(deleted: true)

    remote_projects.objects.each do |obj|
      project = projects.find_or_initialize_by(project_id: obj.id)
      project.permalink = obj.permalink
      project.name = obj.name
      project.project_id = obj.id
      project.save
    end if remote_projects.objects
  end

  def fetch_pages(project_permalink)
    client = OAuth2::Client.new(Rails.configuration.teambox[:key], Rails.configuration.teambox[:secret], :site => 'https://teambox.com')
    access = OAuth2::AccessToken.new(client, self.oauth_token)

    pages = Hashie::Mash.new(JSON.parse(access.get("/api/1/projects/#{project_permalink}/pages").response.body))
    setting.pages.delete_all

    pages.objects.each do |obj|
      page = self.setting.pages.new
      page.page_id = obj.id
      page.name = obj.name
      page.description = obj.description
      ref_page = Hashie::Mash.new JSON.parse(access.get("/api/1/projects/#{project_permalink}/pages/#{obj.id}").response.body)

      ref_page.objects.each do |obj|
        page.slots << obj.type.constantize.new(obj.to_hash)
      end
      page.save
    end if pages.objects
  end
end