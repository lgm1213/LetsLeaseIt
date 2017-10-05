class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :buildings, through: :users, dependent: :destroy
  has_many :listings, through: :buildings, source: :company_users, dependent: :destroy
end
