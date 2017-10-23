class UpdatePages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :content, :string
    add_column :pages, :language, :string
  end
end
