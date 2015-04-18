json.extract! structure, :id, :name, :slug, :description, :_destroy
json.items_attributes structure.items, partial: 'items/item', as: :item