class Listing < ApplicationRecord
  belongs_to :building
  has_many :companies, through: :building
  has_many :users, through: :building
  has_many :appointments, dependent: :destroy
  has_many :listing_images, dependent: :destroy
  accepts_nested_attributes_for :listing_images

  #validates :listing_limits

  STATE = [:pending, :showing, :toured, :closed, :listed]
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

  private
    def validate_listing_count
      errors.add(:base, "You have too many active listings, please destroy a listing or contact your Account Manager if you need more listings") 
        unless too_many_siblings?
      end
    end

    def active_siblings
      building.listings.where(active: true)
    end

    def too_many_siblings?
      active_siblings.select { |sib| sib.id != id } >= (building.listing_limit - 1)
    end
end
