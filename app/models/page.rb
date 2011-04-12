class Page
  include Mongoid::Document
  field :page_id, type: Integer
  field :name
  field :description
  field :enabled, type: Boolean, default: false
  field :root, type: Boolean, default: false

  embedded_in :setting
  embeds_many :slots
  attr_accessible :name, :permalink, :description

  def to_s
    Mustache.render(setting.page, 
      { :yield => slots.map(&:to_s).join, :stylesheet => setting.stylesheet,
        :navigation => setting.render_navigation,
        :name => name, :description => description }
      ).html_safe
  end

  def after_save
    if root == true
      excludes(id: self).update_all(root: false)
    end
  end
end