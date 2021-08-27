class OriginalExpenseRecordsController < ApplicationController
  def index
    @original_expense_records = OriginalExpenseRecord.all
    @original_expense_category_id = params[:original_expense_category_id]
  end

  def show
    @original_expense_record = OriginalExpenseRecord.find(params[:id])
    @original_expense_category = OriginalExpenseCategory.find(params[:id])
  end

  def new
    @original_expense_record = OriginalExpenseRecord.new
    @users = User.all
    @original_expense_categories = OriginalExpenseCategory.all
    @original_expense_category_id = params[:original_expense_category_id]
  end

  def create
    @original_expense_record = OriginalExpenseRecord.new(original_expense_record_params)
    @user_id = current_user.id
    @original_expense_category_id = params[:original_expense_category_id]
    if @original_expense_record.save
      flash[:success] = '正常に入力されました'
      redirect_to mypage_show_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :new
    end
  end

  def edit
    @original_expense_record = OriginalExpenseRecord.find(params[:id])
  end

  def update
    @original_expense_record = OriginalExpenseRecord.find(params[:id])
    if @original_expense_record.update(original_expense_record_params)
      flash[:success] = '変更完了しました'
      redirect_to mypage_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :edit
    end
  end

  def destroy
    @original_expense_record = OriginalExpenseRecord.find(params[:id])
    @original_expense_record.destroy
    flash[:success] = "削除しました。"
    redirect_to mypage_path
  end
  
  private
    def original_expense_record_params
      params.require(:original_expense_record).permit(:registerdate, :money, :memo, :original_expense_category_id, :user_id)
    end
end
