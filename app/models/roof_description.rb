class RoofDescription < ApplicationRecord
	has_many :building_roof_descriptions
  has_many :buildings, :through => :building_roof_descriptions
end
