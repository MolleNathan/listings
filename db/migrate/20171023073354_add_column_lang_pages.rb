class AddColumnLangPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :lang, :string, null: false, default: "en"
  end
end
