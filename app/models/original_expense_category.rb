class OriginalExpenseCategory < ApplicationRecord
    belongs_to :user
    has_many :original_expense_records
    has_many :expense_records
    validates :name, presence:true
end
