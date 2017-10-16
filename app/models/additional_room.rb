class AdditionalRoom < ApplicationRecord
  has_many :building_additional_rooms
	has_many :buildings, :through => :building_additional_rooms
end
