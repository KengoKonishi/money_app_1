class SimpleCalendarController < ApplicationController
def top
    @basic_income_records = BasicIncomeRecord.all
    @records = { 
             basic_income_records: BasicIncomeRecord.all, 
             basic_expense_records: BasicExpenseRecord.all, 
             original_income_records: OriginalIncomeRecord.all,
             original_expense_records: OriginalExpenseRecord.all
             }
end

end
