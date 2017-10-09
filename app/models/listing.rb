class Listing < ApplicationRecord
  belongs_to :building
  has_many :users, through: :building
  has_many :companies, through: :users
  # has_many :appointments

  
  state_machine :state, initial: :pending do
  	event :uploaded do
  		transition pending: :listed
  	end

  	event :scheduled do
  		transition listed: :showing
  	end

  	event :shown do
  		transition showing: :toured
  	end

  	event :leased do
  		transition toured: :closed
  	end

  	event :passed do
  		transition showing: :listed
  	end
  end

end
