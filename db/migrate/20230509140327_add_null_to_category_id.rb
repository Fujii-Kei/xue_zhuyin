class AddNullToCategoryId < ActiveRecord::Migration[7.0]
  def change
    change_column_null :questions, :category_id, false
  end
end
