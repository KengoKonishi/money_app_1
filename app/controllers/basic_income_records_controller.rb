class BasicIncomeRecordsController < ApplicationController
  def index
    
    @basic_income_category_id = params[:basic_income_category_id]
    @basic_income_records = BasicIncomeRecord.all
    @basic_expense_records = BasicExpenseRecord.all
    @basic_expense_category_id = params[:basic_expense_category_id]
    @records = { 
                 basic_income_records: BasicIncomeRecord.all, 
                 basic_expense_records: BasicExpenseRecord.all, 
                 original_income_records: OriginalIncomeRecord.all,
                 original_expense_records: OriginalExpenseRecord.all
               }
  end

  def show
    @basic_income_record = BasicIncomeRecord.find(params[:id])
    @basic_income_category = BasicIncomeCategory.find(params[:id])
  end

  def new
    @basic_income_record = BasicIncomeRecord.new
    @users = User.all
    @basic_income_categories = BasicIncomeCategory.all
    @basic_income_category_id = params[:basic_income_category_id]
  end

  def create
    @basic_income_record = BasicIncomeRecord.new(basic_income_record_params)
    @user_id = current_user.id
    @basic_income_category_id = params[:basic_income_category_id]
    if @basic_income_record.save
      flash[:success] = '正常に入力されました'
      redirect_to mypage_show_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :new
    end
  end

  def edit
    @basic_income_record = BasicIncomeRecord.find(params[:id])
  end

  def update
    @basic_income_record = BasicIncomeRecord.find(params[:id])
    if @basic_income_record.update(basic_income_record_params)
      flash[:success] = '変更完了しました'
      redirect_to mypage_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :edit
    end
  end

  def destroy
    @basic_income_record = BasicIncomeRecord.find(params[:id])
    @basic_income_record.destroy
    flash[:success] = "削除しました。"
    redirect_to mypage_path
  end
  
  private
    def basic_income_record_params
      params.require(:basic_income_record).permit(:registerdate, :money, :memo, :basic_income_category_id, :user_id)
    end
end
