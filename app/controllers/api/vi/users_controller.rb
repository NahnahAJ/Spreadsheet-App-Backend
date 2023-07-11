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
    params.require(:user).permit(:name, :email, :password_digest)
  end

  def render_not_found_response
    render json: { error: 'User not found' }, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end

  def render_unauthorized_response
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end

  def render_no_content_response
    render json: { error: 'No content' }, status: :no_content
  end

  def render_created_response
    render json: { error: 'Created' }, status: :created
  end

  def render_ok_response
    render json: { error: 'Ok' }, status: :ok
  end

  def render_bad_request_response
    render json: { error: 'Bad request' }, status: :bad_request
  end

  def render_forbidden_response
    render json: { error: 'Forbidden' }, status: :forbidden
  end
end
