class CreateBuildingRentPaymentIncs < ActiveRecord::Migration[5.1]
  def change
    create_table :building_rent_payment_incs do |t|
      t.references :building, foreign_key: true
      t.references :rent_payment_inc, foreign_key: true

      t.timestamps
    end
  end
end
