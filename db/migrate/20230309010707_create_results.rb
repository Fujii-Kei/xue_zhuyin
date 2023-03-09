class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :score, null: false
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
