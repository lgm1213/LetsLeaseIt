class CreateBuildingRentRestrictions < ActiveRecord::Migration[5.1]
  def change
    create_table :building_rent_restrictions do |t|
      t.references :building, foreign_key: true
      t.references :rent_restriction, foreign_key: true

      t.timestamps
    end
  end
end
