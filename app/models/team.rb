class Team < ApplicationRecord
  belongs_to :user
  has_many :requests

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  validates :title, presence: :true
  validates :description, presence: :true
  validates :location, presence: :true
  validates :capacity, presence: :true
  mount_uploader :photo, PhotoUploader



  include PgSearch
  pg_search_scope :search_by_title_and_description_and_location,
   against: [ :title, :description, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
