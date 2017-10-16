class CreateBuildingDiningAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :building_dining_areas do |t|
      t.references :building, foreign_key: true
      t.references :dining_area, foreign_key: true

      t.timestamps
    end
  end
end
