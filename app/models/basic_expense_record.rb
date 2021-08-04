class BasicExpenseRecord < ApplicationRecord
    belongs_to :user
    belongs_to :basic_expense_category
    validates :money, presence:true
    validates :registerdate, presence:true
end
