class RentalDeposit < ApplicationRecord
	has_many :building_rental_deposits
  has_many :buildings, :through => :building_rental_deposit
end

