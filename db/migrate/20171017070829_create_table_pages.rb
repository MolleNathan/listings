class CreateTablePages < ActiveRecord::Migration[5.1]
  def change
    create_table "pages", force: :cascade do |t|
      t.string "title"
      t.text "content"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
