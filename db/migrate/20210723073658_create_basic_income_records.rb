class CreateBasicIncomeRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :basic_income_records do |t|
      t.references :user, foreign_key: true
      t.integer :money
      t.references :basic_income_category, foreign_key: true
      t.string :memo
      t.timestamps
    end
  end
end
