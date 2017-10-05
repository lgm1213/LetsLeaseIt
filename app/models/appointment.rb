class Appointment < ApplicationRecord
  belongs_to :listing
  has_many :companies, through: :listings, source: :company_users
end
