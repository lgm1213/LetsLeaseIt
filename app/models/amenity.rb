class Amenity < ApplicationRecord
	has_many :building_amenities
  has_many :buildings, :through => :building_amenities
end
