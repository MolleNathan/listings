class RemoveCategoryIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :category_id, :integer
    add_column :listings, :category_id, :integer
  end
end
