class CreateBuildingRoofDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :building_roof_descriptions do |t|
      t.references :building, foreign_key: true
      t.references :roof_description

      t.timestamps
    end
  end
end
