class CreateBuildingAmenities < ActiveRecord::Migration[5.1]
  def change
    create_table :building_amenities do |t|
      t.references :building, foreign_key: true
      t.references :amenity, foreign_key: true

      t.timestamps
    end
  end
end
