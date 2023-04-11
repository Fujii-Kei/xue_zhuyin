class ChangeAnswersToUserAnswers < ActiveRecord::Migration[7.0]
  def change
    rename_table :answers, :user_answers
  end
end
