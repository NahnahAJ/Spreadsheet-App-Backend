class Api::Vi::UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def update
    user = User.find_by(id: params[:id])
    if user.update(user_params)
      render json: user, status: 200
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    head 204
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def render_not_found_response
    render json: { error: 'User not found' }, status: :not_found
  end
end
