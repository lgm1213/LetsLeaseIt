class Listing < ApplicationRecord
  belongs_to :building
  has_many :companies, through: :users


end
