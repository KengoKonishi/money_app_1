class BasicExpenseCategory < ApplicationRecord
    has_many :basic_expense_records
    has_many :expense_records
    
    belongs_to :user, optional: true
end
