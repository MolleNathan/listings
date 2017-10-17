class CreateTableContacts < ActiveRecord::Migration[5.1]
  def change
    create_table "contacts", force: :cascade do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "listing_id"
      t.integer "user_id"
      t.text "message"
    end
  end
end
