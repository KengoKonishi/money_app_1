class CreateIncomeRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :income_records do |t|

      t.timestamps
    end
  end
end
