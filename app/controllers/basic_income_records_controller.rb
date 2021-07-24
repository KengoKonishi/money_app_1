class BasicIncomeRecordsController < ApplicationController
  def index
    @basic_income_records = BasicIncomeRecord.all
  end

  def show
  end

  def new
    @basic_income_record = BasicIncomeRecord.new
    
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
