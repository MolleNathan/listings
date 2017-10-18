class AddColumnRoleInUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role_id, :integer, null: false, default: 1
  end
end
