class Building < ApplicationRecord
	has_many :companies, through: :users
	belongs_to :user
	has_many :appointments, through: :listings
	has_many :listings, dependent: :destroy
end
