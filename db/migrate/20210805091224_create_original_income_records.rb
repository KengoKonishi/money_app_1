class CreateOriginalIncomeRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :original_income_records do |t|
      t.references :user, foreign_key: true
      t.integer :money
      t.references :original_income_category, foreign_key: true
      t.string :memo
      t.date :registerdate
      t.timestamps
    end
  end
end
