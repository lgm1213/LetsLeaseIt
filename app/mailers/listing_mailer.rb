class ListingMailer < ApplicationMailer
  default from: Rails.application.secrets["gmail_username"]

   def listing_email(listing,changes)
    @listing = listing
    @changes = changes
    mail(to: "leaseit@realestateshoppefl.com", subject: 'Listing Updated #{Time.now.strftime("%B %A, %Y")}')
  end
end
