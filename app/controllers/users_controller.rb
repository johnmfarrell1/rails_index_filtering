class UsersController < ApplicationController
  def index
    @users = User.filter_by(filtering_params).page(params[:page])
  end

  private

  def filtering_params
    params.slice(*User.filter_scopes)
  end
end
