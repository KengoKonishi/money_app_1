class ExpenseRecordsController < ApplicationController
  def index
  end

  def show
  end

  def new
    #ホームから渡されたデータが、basic or original　を識別
    #originalの場合、original_expense_recordsに保存する処理
    #basicの場合、basic_expense__recordに保存する処理
    @expense_record = ExpenseRecord.new
    @users = User.all
    @basic_expense_categories = BasicExpenseCategory.all
    # カテゴリの仕分け
    @basic_expense_category_id = params[:basic_expense_category]
    @original_expense_category_id = params[:original_expense_category]
  end

  def create
    if params["expense_record"][:basic_expense_category].present?
      @basic_expense_record = BasicExpenseRecord.new(registerdate: params["expense_record"][:registerdate], money: params["expense_record"][:money], memo: params["expense_record"][:memo], basic_expense_category_id: params["expense_record"][:basic_expense_category], user_id: params["expense_record"][:user_id])
      if @basic_expense_record.save
        flash[:success] = '正常に入力されました'
        redirect_to simple_calendar_top_path
      else
        flash[:alert] = '正常に入力されませんでした'
        render :new
      end
    elsif params["expense_record"][:original_expense_category].present?
      @original_expense_record = OriginalExpenseRecord.new(registerdate: params["expense_record"][:registerdate], money: params["expense_record"][:money], memo: params["expense_record"][:memo], original_expense_category_id: params["expense_record"][:original_expense_category], user_id: params["expense_record"][:user_id])
      if @original_expense_record.save
        flash[:success] = '正常に入力されました'
        redirect_to simple_calendar_top_path
      else
        flash[:alert] = '正常に入力されませんでした'
        render :new
      end
    else
      render :new
    end

  end
  
  private
    def basic_expense_record_params
      params.require(:basic_expense_record).permit(:registerdate, :money, :memo, :basic_expense_category_id, :user_id)
    end
    
    def original_expense_record_params
      params.require(:original_expense_record).permit(:registerdate, :money, :memo, :original_expense_category_id, :user_id)
    end

end
