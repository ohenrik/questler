class CreateCodeItems < ActiveRecord::Migration
  def change
    create_table :code_items do |t|
      t.text :code

      t.timestamps null: false
    end
  end
end
