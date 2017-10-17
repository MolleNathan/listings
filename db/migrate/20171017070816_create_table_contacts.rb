class CreateTableContacts < ActiveRecord::Migration[5.1]
  def change
    create_table "contacts", force: :cascade do |t|
      t.integer "listing_id"
      t.integer "user_id"
      t.text "message"

      t.timestamps
    end
  end
end
