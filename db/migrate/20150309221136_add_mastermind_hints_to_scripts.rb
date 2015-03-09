class AddMastermindHintsToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :hints, :string
    add_column :scripts, :victory_conditions, :string
  end
end
