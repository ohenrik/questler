class Item < ActiveRecord::Base
  belongs_to :structure
  belongs_to :itemizable, polymorphic: true

  accepts_nested_attributes_for :itemizable, allow_destroy: true

end
