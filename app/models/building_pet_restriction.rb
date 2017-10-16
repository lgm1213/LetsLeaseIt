class BuildingPetRestriction < ApplicationRecord
  belongs_to :building
  belongs_to :pet_restriction
end
