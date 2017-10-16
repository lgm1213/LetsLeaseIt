class ParkingRestriction < ApplicationRecord
	has_many :building_parking_restrictions
  has_many :buildings, :through => :building_parking_restrictions
end
