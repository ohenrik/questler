class TextItem < ActiveRecord::Base
  has_many :items, as: :itemizable
end
