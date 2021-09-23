class ReportsController < ApplicationController
  def result
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today.all_month

    #こっちのほうがいい「puts “記録はありません” if @変数.nil?」

    @now = Date.today
    @this_year = @now.year
    @this_month = @now.month
    
    @b_i_rs = BasicIncomeRecord.joins(:basic_income_category).group(:basic_income_category_id).select("basic_income_category_id, sum(money) as sum_money").where(registerdate: @month, user_id: current_user.id)
    @o_i_rs = OriginalIncomeRecord.joins(:original_income_category).group(:original_income_category_id).select("original_income_category_id, sum(money) as sum_money").where(registerdate: @month, user_id: current_user.id)
    @b_e_rs = BasicExpenseRecord.joins(:basic_expense_category).group(:basic_expense_category_id).select("basic_expense_category_id, sum(money) as sum_money").where(registerdate: @month, user_id: current_user.id)
    @o_e_rs = OriginalExpenseRecord.joins(:original_expense_category).group(:original_expense_category_id).select("original_expense_category_id, sum(money) as sum_money").where(registerdate: @month, user_id: current_user.id)
  end
end
