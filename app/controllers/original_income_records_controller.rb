class OriginalIncomeRecordsController < ApplicationController
  def index
    @original_income_records = OriginalIncomeRecord.all
    @original_income_category_id = params[:original_income_category_id]
  end

  def show
    @original_income_record = OriginalIncomeRecord.find(params[:id])
    @original_income_category = OriginalIncomeCategory.find(params[:id])
  end

  def new
    @original_income_record = OriginalIncomeRecord.new
    @users = User.all
    @original_income_categories = OriginalIncomeCategory.all
    @original_income_category_id = params[:original_income_category_id]
  end

  def create
    @original_income_record = OriginalIncomeRecord.new(original_income_record_params)
    @user_id = current_user.id
    @original_income_category_id = params[:original_income_category_id]
    if @original_income_record.save
      flash[:success] = '正常に入力されました'
      redirect_to mypage_show_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :new
    end
  end

  def edit
    @original_income_record = OriginalIncomeRecord.find(params[:id])
  end

  def update
    @original_income_record = OriginalIncomeRecord.find(params[:id])
    if @original_income_record.update(original_income_record_params)
      flash[:success] = '変更完了しました'
      redirect_to mypage_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :edit
    end
  end

  def destroy
    @original_income_record = OriginalIncomeRecord.find(params[:id])
    @original_income_record.destroy
    flash[:success] = "削除しました。"
    redirect_to mypage_path
  end
  
  private
    def original_income_record_params
      params.require(:original_income_record).permit(:registerdate, :money, :memo, :original_income_category_id, :user_id)
    end
end
