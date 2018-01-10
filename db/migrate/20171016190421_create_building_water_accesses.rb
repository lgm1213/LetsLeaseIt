class CreateBuildingWaterAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :building_water_accesses do |t|
      t.references :building, foreign_key: true
      t.references :water_access, foreign_key: true

      t.timestamps
    end
  end
end
