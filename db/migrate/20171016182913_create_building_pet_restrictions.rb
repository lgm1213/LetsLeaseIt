class CreateBuildingPetRestrictions < ActiveRecord::Migration[5.1]
  def change
    create_table :building_pet_restrictions do |t|
      t.references :building, foreign_key: true
      t.references :pet_restriction, foreign_key: true

      t.timestamps
    end
  end
end
