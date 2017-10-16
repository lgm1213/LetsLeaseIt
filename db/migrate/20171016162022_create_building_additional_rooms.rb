class CreateBuildingAdditionalRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :building_additional_rooms do |t|
      t.references :building, foreign_key: true
      t.references :additional_room, foreign_key: true

      t.timestamps
    end
  end
end
