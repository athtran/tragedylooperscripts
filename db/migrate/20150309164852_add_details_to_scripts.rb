class AddDetailsToScripts < ActiveRecord::Migration
  def change
    add_column :scripts, :cast, :string
    add_column :scripts, :incident, :string
    add_column :scripts, :main_plot, :string
    add_column :scripts, :subplot_1, :string
    add_column :scripts, :subplot_2, :string
    add_column :scripts, :tragedy_set, :string
    add_column :scripts, :num_loops, :string
    add_column :scripts, :days_loop, :string
    add_column :scripts, :special_rule, :string
  end
end
