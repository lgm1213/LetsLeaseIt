class BuildingParkingRestriction < ApplicationRecord
  belongs_to :building
  belongs_to :parking_restriction
end
