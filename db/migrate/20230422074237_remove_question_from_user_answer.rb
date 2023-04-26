class RemoveQuestionFromUserAnswer < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_answers, :question_id, :bigint
  end
end
