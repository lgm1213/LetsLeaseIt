class BuildingAmenity < ApplicationRecord
  belongs_to :building
  belongs_to :amenity
end
