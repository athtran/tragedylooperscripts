class AddColumnsToCasts < ActiveRecord::Migration[5.0]
  def change
    add_column :casts, :cast, :string
    add_column :casts, :role, :string
    add_column :casts, :script_id, :integer
  end
end
