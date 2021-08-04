class BasicIncomeRecord < ApplicationRecord
    belongs_to :user
    belongs_to :basic_income_category
    validates :money, presence:true
    validates :registerdate, presence:true
end
