class CreateRentPaymentIncs < ActiveRecord::Migration[5.1]
  def change
    create_table :rent_payment_incs do |t|
      t.string :options

      t.timestamps
    end
  end
end
