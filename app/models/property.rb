class Property < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :location, presence: true
  validates :property_type, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :no_of_bedrooms, presence: true
end
