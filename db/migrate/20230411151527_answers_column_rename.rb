class AnswersColumnRename < ActiveRecord::Migration[7.0]
  def change
    rename_column :answers, :correct_answer, :is_correct
  end
end
