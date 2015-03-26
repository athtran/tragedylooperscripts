class AddDescriptionToTsets < ActiveRecord::Migration
  def change
    add_column :tsets, :description_1, :text
    add_column :tsets, :description_2, :text
    add_column :tsets, :description_3, :text
    add_column :tsets, :description_4, :text
    add_column :tsets, :description_5, :text
    add_column :tsets, :description_6, :text
    add_column :tsets, :description_7, :text
    add_column :tsets, :description_8, :text
    add_column :tsets, :created_by, :string
  end
end
