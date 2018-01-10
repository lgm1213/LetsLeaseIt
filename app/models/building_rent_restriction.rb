class BuildingRentRestriction < ApplicationRecord
  belongs_to :building
  belongs_to :rent_restriction
end
