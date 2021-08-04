class CreateBasicExpenseRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :basic_expense_records do |t|
      t.references :user, foreign_key: true
      t.integer :money
      t.references :basic_expense_category, foreign_key: true
      t.string :memo
      t.date :registerdate
      t.timestamps
    end
  end
end
