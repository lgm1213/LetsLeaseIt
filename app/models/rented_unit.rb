class RentedUnit < ApplicationRecord
  belongs_to :appointment

  validates :unit_no, :unit_model, :price, :square_footage, presence: true
end
