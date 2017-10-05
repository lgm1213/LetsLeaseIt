class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :buildings, through: :users, dependent: :destroy
  has_many :listings, through: :users, dependent: :destroy
end
