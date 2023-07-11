class Api::Vi::PropertiesController < ApplicationController
  def index
    properties = Property.all
    render json: properties
  end

  def show
    property = Property.find(params[:id])
    render json: property
  end

  def create
    property = Property.new(property_params)
    if property.save
      render json: property
    else
      render json: { errors: property.errors }, status: :unprocessable_entity
    end
  end

  def update
    property = Property.find(params[:id])
    if property.update(property_params)
      render json: property
    else
      render json: { errors: property.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    property = Property.find(params[:id])
    property.destroy
    render json: property
  end

  private

  def property_params
    params.require(:property).permit(:description, :location, :property_type, :image, :price, :category,
                                     :no_of_bedrooms, :user_id)
  end
end
