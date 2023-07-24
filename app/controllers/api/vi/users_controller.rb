class Api::Vi::UsersController < ApplicationController
  def index
    render json: User.all
  end
end
