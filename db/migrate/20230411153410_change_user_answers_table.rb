class ChangeUserAnswersTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_answers, :body
    remove_column :user_answers, :answer_audio
  end
end
