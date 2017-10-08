class Company < ApplicationRecord
  has_many :appointments, through: :listing, dependent: :destroy
  has_many :listings, through: :building, dependent: :destroy
  has_many :buildings, through: :users, dependent: :destroy
  has_many :users, dependent: :destroy
end
