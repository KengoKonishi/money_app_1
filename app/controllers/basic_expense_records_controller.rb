class BasicExpenseRecordsController < ApplicationController
  def index
    @basic_expense_records = BasicExpenseRecord.all
    @basic_expense_category_id = params[:basic_expense_category_id]
  end

  def show
    @basic_expense_record = BasicExpenseRecord.find(params[:id])
    @basic_expense_category = BasicExpenseCategory.find(params[:id])
  end

  def new
    @basic_expense_record = BasicExpenseRecord.new
    @users = User.all
    @basic_expense_categories = BasicExpenseCategory.all
    @basic_expense_category_id = params[:basic_expense_category_id]
  end

  def create
    @basic_expense_record = BasicExpenseRecord.new(basic_expense_record_params)
    @user_id = current_user.id
    @basic_expense_category_id = params[:basic_expense_category_id]
    if @basic_expense_record.save
      flash[:success] = '正常に入力されました'
      redirect_to mypage_show_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :new
    end
  end

  def edit
    @basic_expense_record = BasicExpenseRecord.find(params[:id])
  end

  def update
    @basic_expense_record = BasicExpenseRecord.find(params[:id])
    if @basic_expense_record.update(basic_expense_record_params)
      flash[:success] = '変更完了しました'
      redirect_to mypage_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :edit
    end
  end

  def destroy
    @basic_expense_record = BasicExpenseRecord.find(params[:id])
    @basic_expense_record.destroy
    flash[:success] = "削除しました。"
    redirect_to mypage_path
  end
  
  private
    def basic_expense_record_params
      params.require(:basic_expense_record).permit(:registerdate, :money, :memo, :basic_expense_category_id, :user_id)
    end
end
