class ListingMailer < ApplicationMailer
  default from: ENV.fetch('GMAIL_USER')

   def listing_email(listing,changes)
    @listing = listing
    @changes = changes
    mail(to: "itskcin@gmail.com", subject: 'Listing Updated #{Time.now.strftime("%B %A, %Y")}')
  end
end
