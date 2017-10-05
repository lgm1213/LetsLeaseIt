class Listing < ApplicationRecord
  belongs_to :building
  has_many :appointments
  has_many :companies, through: :buildings, source: :company_users


end
