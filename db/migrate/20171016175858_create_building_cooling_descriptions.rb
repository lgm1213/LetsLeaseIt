class CreateBuildingCoolingDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :building_cooling_descriptions do |t|
      t.references :building, foreign_key: true
      t.references :cooling_description, foreign_key: true

      t.timestamps
    end
  end
end
