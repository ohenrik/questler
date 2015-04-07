json.extract! quest, :id, :title, :excerpt
json.structures_attributes quest.structures, partial: 'structures/structure', as: :structure
