class AddBasicIncomeRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :basic_income_records, :registerdate, :date
  end
end
