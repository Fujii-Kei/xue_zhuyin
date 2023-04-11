class ChangeQuestionTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :correct_answer
    change_column_null :questions, :title, false
  end
end
