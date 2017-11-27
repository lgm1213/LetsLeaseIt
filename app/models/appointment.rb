class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  
  has_many :companies, through: :listing
  has_many :rented_units, dependent: :destroy

end
