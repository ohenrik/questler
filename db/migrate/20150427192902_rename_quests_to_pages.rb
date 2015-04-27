class RenameQuestsToPages < ActiveRecord::Migration
  def change
    rename_table :quests, :pages
  end
end
