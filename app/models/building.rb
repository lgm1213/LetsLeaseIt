class Building < ApplicationRecord
  belongs_to :user
  has_many :listings, dependent: :destroy
  has_many :appointments, through: :listings
end
