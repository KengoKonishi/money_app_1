class BasicIncomeCategory < ApplicationRecord
    has_many :basic_income_records
    has_many :income_records
    
    belongs_to :user
end
