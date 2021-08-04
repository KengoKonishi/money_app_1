class BasicExpenseCategory < ApplicationRecord
    has_many :basic_expense_records
end
