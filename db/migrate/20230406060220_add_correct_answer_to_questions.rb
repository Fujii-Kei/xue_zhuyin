class AddCorrectAnswerToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :correct_answer, :integer
  end
end
