class Setting
  include Mongoid::Document
  field :project_id, type: Integer
  field :cache_expiration, type: Integer
  field :domain, type: String

  field :page
  field :stylesheet
  field :divider
  field :note
  field :upload

  embeds_many :routes
  embeds_many :pages
  embeds_many :users
  attr_accessible :project_id, :cache_expiration, :domain, :page, :stylesheet, :divider, :note, :upload, :navigation

  before_create :load_default_template

  def render_navigation
    Mustache.render(self[:navigation], :pages => routes.where(enabled: true).all.map { |r| {:link => "/#{r.permalink}", :name => r.page.name} })
  end

  def create_or_update_user_by_teambox_auth(auth)
    if Rails.configuration.administrators.split(',').include? auth.user_info.nickname
      user = users.find_or_initialize_by(teambox_uid: auth.uid)

      user.name = auth.user_info.nickname
      user.oauth_token = auth.credentials.token
      user.email = auth.extra.user_hash.email
      user.token = ActiveSupport::SecureRandom.hex(24)
      user.save
      user
    end
  end

  protected
  def load_default_template
    [:page, :stylesheet, :divider, :note, :upload, :navigation].each do |part|
      self[part.to_sym] = File.open("#{Rails.root}/template/#{part}.tpl").read
    end
  end
end