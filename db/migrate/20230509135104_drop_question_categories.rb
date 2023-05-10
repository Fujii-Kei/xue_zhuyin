class DropQuestionCategories < ActiveRecord::Migration[7.0]
  def change
    drop_table :question_categories
  end
end
