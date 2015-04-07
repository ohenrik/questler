class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :content
      t.references :structure, index: true
      t.references :itemizable, polymorphic: true, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :structures
  end
end
