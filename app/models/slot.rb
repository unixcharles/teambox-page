class Slot
  include Mongoid::Document
  field :position, type: Integer
  field :active, type: Boolean
  embedded_in :page

  def to_hash
    self._accessible_attributes.inject({}) {|h,k| h[k]=self[k.to_sym]; h}
  end

  def to_s
    Mustache.render(page.setting[self.class.to_s.downcase.to_sym], to_hash)
  end
end