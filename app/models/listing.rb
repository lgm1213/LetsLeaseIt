class Listing < ApplicationRecord
  belongs_to :building
  has_many :users, through: :building
  has_many :companies, through: :users
  has_many :appointments, dependent: :destroy
  has_many :listing_images, dependent: :destroy, inverse_of: :listing
  accepts_nested_attributes_for :listing_images, reject_if: :all_blank, allow_destroy: true
  validate :validate_listing_count, on: [:create, :update]

  include ActiveModel::Dirty
  after_update :listing_update_notification

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
      if too_many_siblings?
        errors.add(:base, "You have too many active listings, please destroy a listing or contact your Account Manager if you need more listings") 
      else

      end
    end

    def active_siblings
      building.listings.where(active: true).count
    end

    def too_many_siblings?
      active_siblings >= building.listing_limit
    end

    def listing_update_notification
      ListingMailer.listing_email(self, self.changes).deliver
    end
end