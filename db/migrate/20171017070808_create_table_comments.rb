class CreateTableComments < ActiveRecord::Migration[5.1]
  def change
    create_table "comments", force: :cascade do |t|
      t.text "content"
      t.integer "user_id"
      t.integer "listing_id"

      t.timestamps
    end
  end
end
