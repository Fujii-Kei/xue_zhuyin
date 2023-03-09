class AddForeignkeyToResult < ActiveRecord::Migration[7.0]
  def change
    add_reference :results, :level, foreign_key: true, null: false
  end
end
