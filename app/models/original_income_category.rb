class OriginalIncomeCategory < ApplicationRecord
    belongs_to :user
    has_many :original_income_records
    has_many :income_records
    validates :name, presence:true
end
