class Room < ApplicationRecord
  belongs_to :user
  has_many :photos
  
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
