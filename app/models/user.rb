class User < ApplicationRecord
  has_many :requests
  has_many :participations
  has_many :events, through: :participations
  has_many :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
