class CreateTextItems < ActiveRecord::Migration
  def change
    create_table :text_items do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
