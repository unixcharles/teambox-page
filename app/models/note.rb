class Note < Slot
  field :name
  field :body_html

  attr_accessible :name, :body, :body_html, :position
end