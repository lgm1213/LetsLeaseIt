class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :building

  has_many :companies, through: :building
  has_many :rented_units, dependent: :destroy

end
