class CreateTableListings < ActiveRecord::Migration[5.1]
  def change
    create_table "listings", force: :cascade do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "title"
      t.text "description"
      t.string "picture"
      t.decimal "price"
      t.integer "category_id"
      t.integer "user_id"
    end
  end
end
