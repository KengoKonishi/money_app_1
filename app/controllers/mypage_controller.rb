class MypageController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def show
  end
end
