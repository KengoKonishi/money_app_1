class BasicExpenseRecord < ApplicationRecord
    belongs_to :user
    belongs_to :basic_expense_category
    validates :money, presence:true
    validates :registerdate, presence:true
    
  def start_time
    self.created_at
  end

  def end_time
    self.created_at
  end
end
