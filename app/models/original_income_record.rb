class OriginalIncomeRecord < ApplicationRecord
    belongs_to :user
    belongs_to :original_income_category
    validates :money, presence:true
    validates :registerdate, presence:true
end
