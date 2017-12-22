class ListingMailer < ApplicationMailer
  default from: Rails.application.secrets["gmail_username"]

   def listing_email(listing,changes)
    @listing = listing
    @changes = changes
    mail(to: Rails.application.secrets["gmail_username"], subject: 'Listing Updated')
  end
end
