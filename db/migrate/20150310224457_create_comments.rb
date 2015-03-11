class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body

      #this line adds an integer column called 'article_id'
      t.references :script, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
