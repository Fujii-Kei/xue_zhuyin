class AddExplanationToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :explanation, :text
  end
end
