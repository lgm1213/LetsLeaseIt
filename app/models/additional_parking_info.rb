class AdditionalParkingInfo < ApplicationRecord
	has_many :building_additional_parkings
	has_many :buildings, :through => :building_additional_parking
end
