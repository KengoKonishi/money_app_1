class IncomeRecordsController < ApplicationController
  def index
  end

  def show
  end
  
  def new
    #ホームから渡されたデータが、basic or original　を識別
    #originalの場合、original_income_recordsに保存する処理
    #basicの場合、basic_income__recordに保存する処理
  end

  def create
    respond_to do |format|
      format.html 
      format.js 
    end
  end
end
