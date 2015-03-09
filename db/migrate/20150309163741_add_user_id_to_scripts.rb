class AddUserIdToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :user_id, :integer
    add_index :scripts, :user_id
  end
end
