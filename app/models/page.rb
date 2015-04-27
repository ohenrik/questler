class Page < ActiveRecord::Base
  has_many :structures, as: :constructable, dependent: :destroy

  accepts_nested_attributes_for :structures, allow_destroy: true

end
