class AddTitleToQuestion < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :title, :string
    add_column :questions, :question_audio, :string
  end
end
