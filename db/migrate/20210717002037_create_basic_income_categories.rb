class CreateBasicIncomeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :basic_income_categories do |t|
      
      t.timestamps
    end
  end
end
