class PetRestriction < ApplicationRecord
	has_many :building_pet_restrictions
  has_many :buildings, :through => :building_pet_restrictions
end
