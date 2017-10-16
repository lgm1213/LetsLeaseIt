class DropRentalPaymentIncsTable < ActiveRecord::Migration[5.1]
  def change
  	drop_table :rental_payment_includes
  end
end
