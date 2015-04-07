class Structure < ActiveRecord::Base
  belongs_to :constructable, polymorphic: true
  has_many :items, dependent: :destroy

  has_many :text_items, :through => :items, :source => :itemizable, :source_type => 'TextItem'

end
