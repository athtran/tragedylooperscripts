class CreateTsets < ActiveRecord::Migration
  def change
    create_table :tsets do |t|
      t.string :title
      
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
