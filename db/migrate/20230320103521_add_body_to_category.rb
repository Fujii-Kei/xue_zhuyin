class AddBodyToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :body, :text, null: false
    change_column_null :categories, :name, false
  end
end
