class OriginalIncomeCategoriesController < ApplicationController
  def index
    @original_income_categories = OriginalIncomeCategory.all
  end

  def show
    @original_income_category = OriginalIncomeCategory.find(params[:id])
    @users = User.all
  end

  def new
    @original_income_category = OriginalIncomeCategory.new
    @users = User.all
  end

  def create
    @original_income_category = OriginalIncomeCategory.new(original_income_category_params)
    @user_id = current_user.id
    if @original_income_category.save
      flash[:success] = '正常に入力されました'
      redirect_to new_original_income_record_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :new
    end
  end

  def edit
    @original_income_category = OriginalIncomeCategory.find(params[:id])
  end

  def update
    @original_income_category = OriginalIncomeCategory.find(params[:id])
    if @original_income_category.update(original_income_category_params)
      flash[:success] = '変更完了しました'
      redirect_to mypage_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :edit
    end
  end

  def destroy
    @original_income_category = OriginalIncomeCategory.find(params[:id])
    @original_income_category.destroy
    flash[:success] = "削除しました。"
    redirect_to mypage_path
  end
  
  private
    def original_income_category_params
      params.require(:original_income_category).permit(:name, :user_id)
    end
end
