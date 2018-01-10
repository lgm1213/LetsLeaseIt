class CoolingDescription < ApplicationRecord
	has_many :building_cooling_descriptions
  has_many :buildings, :through => :building_cooling_descriptions
end
