class Appointment < ApplicationRecord
  ##TODO - Where is the migration for this model
  belongs_to :listing
  has_many :companies, through: :listing
end
