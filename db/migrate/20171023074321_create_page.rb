class CreatePage < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :name
    end
  end
end
