class RentPaymentInc < ApplicationRecord
	has_many :building_rent_payment_incs
  has_many :buildings, :through => :building_rent_payment_incs
end
