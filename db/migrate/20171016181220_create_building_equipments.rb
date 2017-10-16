class CreateBuildingEquipments < ActiveRecord::Migration[5.1]
  def change
    create_table :building_equipments do |t|
      t.references :building, foreign_key: true
      t.references :equipment, foreign_key: true

      t.timestamps
    end
  end
end
