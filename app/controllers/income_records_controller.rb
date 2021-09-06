class IncomeRecordsController < ApplicationController
  def index
  end

  def show
  end
  
  def new
    #ホームから渡されたデータが、basic or original　を識別
    #originalの場合、original_income_recordsに保存する処理
    #basicの場合、basic_income__recordに保存する処理
    @income_record = IncomeRecord.new
    @users = User.all
    @basic_income_categories = BasicIncomeCategory.all
    # カテゴリの仕分け
    @basic_income_category_id = params[:basic_income_category]
    @original_income_category_id = params[:original_income_category]
    
  end

  def create

    if params["income_record"][:basic_income_category].present?
      redirect_to controller: :basic_income_records, action: :create, registerdate: params["income_record"][:registerdate], money: params["income_record"][:money], memo: params["income_record"][:memo], basic_income_category_id: params["income_record"][:basic_income_category], user_id: params["income_record"][:user_id]
    elsif params["income_record"][:original_income_category].present?
      redirect_to controller: :original_income_records, action: :create
    else
      render :new
    end

  end
  
  
end



