class Event < ApplicationRecord
  belongs_to :team

  validates :title, presence: :true
  validates :description, presence: :true
  validates :location, presence: :true
  validates :date, presence: :true
end
