class Listing < ApplicationRecord
  belongs_to :building
  has_many :appointments
  has_many :companies, through: :building, source: :company_users


end
