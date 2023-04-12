class RemoveLevelFromResult < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :results, :levels
    remove_reference :results, :level, index: true
  end
end
