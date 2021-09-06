class OriginalIncomeRecord < ApplicationRecord
    belongs_to :user
    belongs_to :original_income_category
    validates :money, presence:true
    validates :registerdate, presence:true
  def start_time
    self.created_at
  end

  def end_time
    self.created_at
  end
end
