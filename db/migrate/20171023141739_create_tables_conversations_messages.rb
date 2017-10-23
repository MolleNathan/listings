class CreateTablesConversationsMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.integer "user_id"
      t.integer "listing_id"
      t.timestamps
    end

    create_table :messages do |t|
      t.integer "user_id"
      t.integer "conversation_id"
      t.text "content"
      t.timestamps
    end
  end
end
