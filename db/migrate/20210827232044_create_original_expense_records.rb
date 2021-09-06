class CreateOriginalExpenseRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :original_expense_records do |t|
      t.references :user, foreign_key: true
      t.integer :money
      t.references :original_expense_category, foreign_key: true
      t.string :memo
      t.date :registerdate
      t.timestamps
    end
  end
end
