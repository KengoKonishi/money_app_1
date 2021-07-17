class AddNameToBasicIncomeCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :basic_income_categories, :name, :string
  end
end
