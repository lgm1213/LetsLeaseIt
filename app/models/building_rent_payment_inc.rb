class BuildingRentPaymentInc < ApplicationRecord
  belongs_to :building
  belongs_to :rent_payment_inc
end
