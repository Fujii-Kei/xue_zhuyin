class ChangeQuestionAnswersToAnswers < ActiveRecord::Migration[7.0]
  def change
    rename_table :question_answers, :answers
  end
end
