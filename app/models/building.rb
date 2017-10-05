class Building < ApplicationRecord
  #listing relationship
  belongs_to :user
  has_many :companies, through: :users, as: :company_users
  has_many :listings, dependent: :destroy
  has_many :appointments, through: :listings
end
