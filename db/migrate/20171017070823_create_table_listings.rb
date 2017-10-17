class CreateTableListings < ActiveRecord::Migration[5.1]
  def change
    create_table "listings", force: :cascade do |t|
      t.string "title"
      t.text "description"
      t.string "picture"
      t.decimal "price"
      t.integer "category_id"
      t.integer "user_id"

      t.timestamps
    end
  end
end
