class Route
  include Mongoid::Document
  field :permalink, type: String
  field :enabled, type: Boolean
  field :page_id, type: Integer
  field :root_page, type: Boolean, default: false
  after_save :ensure_unique_root_page

  embedded_in :setting
  attr_accessible :permalink, :page_id, :enabled, :root_page

  def page
    setting.pages.where(page_id: page_id).first
  end

  protected
  def ensure_unique_root_page
    if root_page
      setting.routes.excludes(id: self.id).update_all(root_page: false)
    end
  end
end
