class CreateRentalDeposits < ActiveRecord::Migration[5.1]
  def change
    create_table :rental_deposits do |t|
      t.string :options

      t.timestamps
    end
  end
end
