class AddAdditionalHintsToScripts < ActiveRecord::Migration
  def change
  	add_column :scripts, :hints_1, :string
    add_column :scripts, :hints_2, :string
    add_column :scripts, :hints_3, :string
    add_column :scripts, :hints_4, :string
    add_column :scripts, :hints_5, :string
    add_column :scripts, :difficulty, :string
    add_column :scripts, :victory_conditions_1, :string
    add_column :scripts, :victory_conditions_2, :string
    add_column :scripts, :victory_conditions_3, :string
    add_column :scripts, :victory_conditions_4, :string
    add_column :scripts, :victory_conditions_5, :string
  end
end
