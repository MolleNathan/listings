class CreatePages < ActiveRecord::Migration[5.1]
  def change
    drop_table :pages

    create_table :pages do |t|
      t.string :title
      t.text :content
      t.string :lng
    end
  end
end
