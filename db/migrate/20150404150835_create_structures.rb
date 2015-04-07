class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.references :constructable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
