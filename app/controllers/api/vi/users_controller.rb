class Api::Vi::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end
end
