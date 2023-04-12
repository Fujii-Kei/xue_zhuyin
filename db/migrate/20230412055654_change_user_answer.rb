class ChangeUserAnswer < ActiveRecord::Migration[7.0]
  def change
    #add references between user_answers and users
    add_reference :user_answers, :user, foreign_key: true, null: false
    #add references between user_answers and answers
    add_reference :user_answers, :answer, foreign_key: true, null: false
    #add references between user_answers and questions
    add_reference :user_answers, :question, foreign_key: true, null: false
  end
end
