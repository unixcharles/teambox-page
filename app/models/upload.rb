class Upload < Slot
  field :download
  field :filename

  attr_accessible :download, :filename, :position
end