class Project
  include Mongoid::Document
  field :name, type: String
  field :project_id, type: Integer
  field :permalink, type: String
  field :task_list_id, type: Integer
  field :deleted, type: Boolean, default: false

  embedded_in :user
end