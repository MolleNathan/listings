class AddRole < ActiveRecord::Migration[5.1]
  def change
    create_table "roles", force: :cascade do |t|
      t.string "name"
    end

    add_column :users, :role_id, :integer

  end
end
