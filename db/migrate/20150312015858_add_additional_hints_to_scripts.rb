class AddAdditionalHintsToScripts < ActiveRecord::Migration
  def change
  	add_column :scripts, :hints_1, :text
    add_column :scripts, :hints_2, :text
    add_column :scripts, :hints_3, :text
    add_column :scripts, :hints_4, :text
    add_column :scripts, :hints_5, :text
    add_column :scripts, :difficulty, :string
    add_column :scripts, :victory_conditions_1, :text
    add_column :scripts, :victory_conditions_2, :text
    add_column :scripts, :victory_conditions_3, :text
    add_column :scripts, :victory_conditions_4, :text
    add_column :scripts, :victory_conditions_5, :text
  end
end
