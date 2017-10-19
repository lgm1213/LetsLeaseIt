class Company < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :buildings, through: :users, dependent: :destroy
  has_many :listings, through: :buildings, dependent: :destroy
  has_many :appointments, through: :listings, dependent: :destroy
end
