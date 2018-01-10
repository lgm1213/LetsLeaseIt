class CreateBuildingRentalDeposits < ActiveRecord::Migration[5.1]
  def change
    create_table :building_rental_deposits do |t|
      t.references :building, foreign_key: true
      t.references :rental_deposit, foreign_key: true

      t.timestamps
    end
  end
end
