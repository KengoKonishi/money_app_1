class CreateExpenseRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_records do |t|

      t.timestamps
    end
  end
end
