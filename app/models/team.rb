class Team < ApplicationRecord
  belongs_to :user
  has_many :requests
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
