class RentRestriction < ApplicationRecord
	has_many :building_rent_restrictions
  has_many :buildings, :through => :building_rent_restrictions
end
