class CreateOriginalExpenseCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :original_expense_categories do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
