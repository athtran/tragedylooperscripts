class CreateCasts < ActiveRecord::Migration[5.0]
  def change
    create_table :casts do |t|

      t.timestamps null: false
    end
  end
end
