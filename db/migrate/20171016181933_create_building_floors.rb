class CreateBuildingFloors < ActiveRecord::Migration[5.1]
  def change
    create_table :building_floors do |t|
      t.references :building, foreign_key: true
      t.references :floor, foreign_key: true

      t.timestamps
    end
  end
end
