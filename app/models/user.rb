class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :basic_income_records
  has_many :basic_expense_records
  has_many :original_income_categories
  has_many :original_income_records
  has_many :income_records
  has_many :original_expense_categories
  has_many :original_expense_records
end
