class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  # has_secure_password
  has_many :properties
  validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :password_digest, presence: true
end
