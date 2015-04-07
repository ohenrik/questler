class Item < ActiveRecord::Base
  belongs_to :structure
  belongs_to :itemizable, polymorphic: true
end
