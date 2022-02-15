class UsersController < ApplicationController
  def index
    @users = User.filter_by(params).page(params[:page])
  end
end
