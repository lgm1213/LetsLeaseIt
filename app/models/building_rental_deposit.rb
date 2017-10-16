class BuildingRentalDeposit < ApplicationRecord
  belongs_to :building
  belongs_to :rental_deposit
end
