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
      @basic_income_record = BasicIncomeRecord.new(registerdate: params["income_record"][:registerdate], money: params["income_record"][:money], memo: params["income_record"][:memo], basic_income_category_id: params["income_record"][:basic_income_category], user_id: params["income_record"][:user_id])
      if @basic_income_record.save
        flash[:success] = '正常に入力されました'
        redirect_to mypage_show_path
      else
        flash[:alert] = '正常に入力されませんでした'
        render :new
      end
    elsif params["income_record"][:original_income_category].present?
      @original_income_record = OriginalIncomeRecord.new(registerdate: params["income_record"][:registerdate], money: params["income_record"][:money], memo: params["income_record"][:memo], original_income_category_id: params["income_record"][:original_income_category], user_id: params["income_record"][:user_id])
      if @original_income_record.save
        flash[:success] = '正常に入力されました'
        redirect_to mypage_show_path
q        flash[:alert] = '正常に入力されませんでした'
        render :new
      end
    else
      render :new
    end

  end
  
  private
    def basic_income_record_params
      params.require(:basic_income_record).permit(:registerdate, :money, :memo, :basic_income_category_id, :user_id)
    end
    
    def original_income_record_params
      params.require(:original_income_record).permit(:registerdate, :money, :memo, :original_income_category_id, :user_id)
    end
end



