class CreateBuildingAdditionalParkingInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :building_additional_parking do |t|
      t.references :building, foreign_key: true
      t.references :additional_parking_info, foreign_key: true

      t.timestamps
    end
  end
end
