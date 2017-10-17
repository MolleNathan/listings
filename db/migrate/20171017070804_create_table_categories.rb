class CreateTableCategories < ActiveRecord::Migration[5.1]
  def change
    create_table "categories", force: :cascade do |t|
      t.string "name"

      t.timestamps
    end
  end
end
