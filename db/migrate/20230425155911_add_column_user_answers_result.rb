class AddColumnUserAnswersResult < ActiveRecord::Migration[7.0]
  def change
    add_column :user_answers, :result_id, :integer, null: false
  end
end
