class AddColumnFirstnameLastnameInUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string, null: false, default: "Anonymous"
    add_column :users, :last_name, :string, null: false, default: "Anonymous"
  end
end
