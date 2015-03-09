class AddDaysToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :day_1, :string
    add_column :scripts, :culprit_1, :string
    add_column :scripts, :day_2, :string
    add_column :scripts, :culprit_2, :string
    add_column :scripts, :day_3, :string
    add_column :scripts, :culprit_3, :string
    add_column :scripts, :day_4, :string
    add_column :scripts, :culprit_4, :string
    add_column :scripts, :day_5, :string
    add_column :scripts, :culprit_5, :string
    add_column :scripts, :day_6, :string
    add_column :scripts, :culprit_6, :string
    add_column :scripts, :day_7, :string
    add_column :scripts, :culprit_7, :string
    add_column :scripts, :day_8, :string
    add_column :scripts, :culprit_8, :string
  end
end
