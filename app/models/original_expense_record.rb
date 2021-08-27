class OriginalExpenseRecord < ApplicationRecord
    belongs_to :user
    belongs_to :original_expense_category
    validates :money, presence:true
    validates :registerdate, presence:true
end
