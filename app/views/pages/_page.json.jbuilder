json.extract! page, :id, :title, :excerpt
json.structures_attributes page.structures, partial: 'structures/structure', as: :structure
