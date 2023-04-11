class ChangeAnswerTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :answers, :answer_id
    add_column :answers, :body, :text, null: false
    add_column :answers, :correct_answer, :boolean, default: false
    add_column :answers, :answer_audio, :string
  end
end
