class ExpenseRecord < ApplicationRecord
    belongs_to :user
    belongs_to :basic_expense_category
    belongs_to :original_expense_category
    validates :money, presence:true
    validates :registerdate, presence:true
end
