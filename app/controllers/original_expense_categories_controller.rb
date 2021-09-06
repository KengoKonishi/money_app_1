class OriginalExpenseCategoriesController < ApplicationController
  def index
    @original_expense_categories = OriginalExpenseCategory.all
  end

  def show
    @original_expense_category = OriginalExpenseCategory.find(params[:id])
    @users = User.all
  end

  def new
    @original_expense_category = OriginalExpenseCategory.new
    @users = User.all
  end

  def create
    @original_expense_category = OriginalExpenseCategory.new(original_expense_category_params)
    @user_id = current_user.id
    if @original_expense_category.save
      flash[:success] = '正常に入力されました'
      redirect_to new_original_expense_record_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :new
    end
  end

  def edit
    @original_expense_category = OriginalExpenseCategory.find(params[:id])
  end

  def update
    @original_expense_category = OriginalExpenseCategory.find(params[:id])
    if @original_expense_category.update(original_expense_category_params)
      flash[:success] = '変更完了しました'
      redirect_to mypage_path
    else
      flash[:alert] = '正常に入力されませんでした'
      render :edit
    end
  end

  def destroy
    @original_expense_category = OriginalExpenseCategory.find(params[:id])
    @original_expense_category.destroy
    flash[:success] = "削除しました。"
    redirect_to mypage_path
  end
  
  private
    def original_expense_category_params
      params.require(:original_expense_category).permit(:name, :user_id)
    end
end
