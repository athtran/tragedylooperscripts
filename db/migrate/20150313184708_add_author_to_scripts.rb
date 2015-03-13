class AddAuthorToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :created_by, :string
  end
end
