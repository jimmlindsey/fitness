class Room < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations
  
  validates :room_type, presence: true
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  def cover_photo(size)
    if self.photos.length > 0
      self.photos[0].image.url(size)
    else
      "blank.jpg"
    end
  end
end
