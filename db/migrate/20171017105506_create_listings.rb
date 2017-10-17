class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.timestamps
      t.string :title
      t.text :description
      t.string :picture
      t.integer :user_id
    end
  end
end
