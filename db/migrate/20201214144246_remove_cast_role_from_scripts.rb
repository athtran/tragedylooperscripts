class RemoveCastRoleFromScripts < ActiveRecord::Migration[5.0]
  def change
    remove_column :scripts, :cast_1
    remove_column :scripts, :role_1
    remove_column :scripts, :cast_2
    remove_column :scripts, :role_2
    remove_column :scripts, :cast_3
    remove_column :scripts, :role_3
    remove_column :scripts, :cast_4
    remove_column :scripts, :role_4
    remove_column :scripts, :cast_5
    remove_column :scripts, :role_5
    remove_column :scripts, :cast_6
    remove_column :scripts, :role_6
    remove_column :scripts, :cast_7
    remove_column :scripts, :role_7
    remove_column :scripts, :cast_8
    remove_column :scripts, :role_8
    remove_column :scripts, :cast_9
    remove_column :scripts, :role_9
    remove_column :scripts, :cast_10
    remove_column :scripts, :role_10
    remove_column :scripts, :cast_11
    remove_column :scripts, :role_11
    remove_column :scripts, :cast_12
    remove_column :scripts, :role_12
  end
end
