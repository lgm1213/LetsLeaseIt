class WaterAccess < ApplicationRecord
	has_many :building_water_accesses
  has_many :buildings, :through => :building_water_accesses
end
