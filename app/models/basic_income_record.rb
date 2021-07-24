class BasicIncomeRecord < ApplicationRecord
    belongs_to :user
    belongs_to :basic_income_category
end
