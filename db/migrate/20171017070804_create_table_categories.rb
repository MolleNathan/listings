class CreateTableCategories < ActiveRecord::Migration[5.1]
  def change
    create_table "categories", force: :cascade do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "name"
    end
  end
end
