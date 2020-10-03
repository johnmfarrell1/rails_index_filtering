class UsersController < ApplicationController
  def index
    @users = User.filter(filtering_params)
  end

  private

  def filtering_params
    params.slice(*User.search_scopes)
  end
end
