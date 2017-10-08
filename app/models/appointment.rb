class Appointment < ApplicationRecord
  belongs_to :listing
  has_many :companies, through: :listing
end
