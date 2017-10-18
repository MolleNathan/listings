class ListCategory < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
    end

    add_column :listings, :category_id, :integer
  end
end
