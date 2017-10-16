class CreateParkingRestrictions < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_restrictions do |t|
      t.string :options

      t.timestamps
    end
  end
end
