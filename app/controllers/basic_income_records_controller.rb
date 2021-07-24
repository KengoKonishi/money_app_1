class BasicIncomeRecordsController < ApplicationController
  def index
    @basic_income_records = BasicIncomeRecord.all
  end

  def show
  end

  def new
    @basic_income_record = BasicIncomeRecord.new
    @users = User.all
    @basic_income_categories = BasicIncomeCategory.all
    @basic_income_category_id = params[:basic_income_category_id]
  end

  def create
    @basic_income_record = BasicIncomeRecord.new(basic_income_record_params)
    @basic_income_record.save
    redirect_to mypage_path
  end

  def edit
    @basic_income_record = BasicIncomeRecord.find(params[:id])
  end

  def update
    @basic_income_record = BasicIncomeRecord.find(params[:id])
    @basic_income_record.update(basic_income_record_params)
    redirect_to mypage_path
  end

  def destroy
    @basic_income_record = BasicIncomeRecord.find(params[:id])
    @basic_income_record.destroy
    redirect_to mypage_path
  end
  
  private
    def basic_income_record_params
      params.require(:basic_income_product).permit(:registerdate, :money, :memo, :basic_income_category_id)
    end
end
