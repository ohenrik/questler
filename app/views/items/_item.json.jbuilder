json.extract! item, :id, :title, :content, :structure_id, :itemizable_id, :itemizable_type, :_destroy
json.itemizable_attributes item.itemizable #, partial: "items/#{item.itemizable_type.underscore}", as: :item_type
