class SimpleCalendarController < ApplicationController
    def top
        @records = []
        @records << BasicIncomeRecord.all.joins(:basic_income_category).where(user_id: current_user.id)
        @records << OriginalIncomeRecord.all.joins(:original_income_category).where(user_id: current_user.id)
        @records << BasicExpenseRecord.all.joins(:basic_expense_category).where(user_id: current_user.id)
        @records << OriginalExpenseRecord.all.joins(:original_expense_category).where(user_id: current_user.id)
        @flatten_records = @records.flatten!
        
        @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today.all_month
        
        @income_records = []
        @income_records << BasicIncomeRecord.all.where(registerdate: @month, user_id: current_user.id)
        @income_records << OriginalIncomeRecord.all.where(registerdate: @month, user_id: current_user.id)
        @flatten_income_records = @income_records.flatten!
        
        @expense_records =[]
        @expense_records << BasicExpenseRecord.all.where(registerdate: @month, user_id: current_user.id)
        @expense_records << OriginalExpenseRecord.all.where(registerdate: @month, user_id: current_user.id)
        @flatten_expense_records = @expense_records.flatten!
        
        @sum_records = @flatten_income_records.sum { |hash| hash[:money]} - @flatten_expense_records.sum { |hash| hash[:money]}
        
        @now = Date.today
        @this_year = @now.year
        @this_month = @now.month
    end

end
