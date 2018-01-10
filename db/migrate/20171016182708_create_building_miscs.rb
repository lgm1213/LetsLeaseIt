class CreateBuildingMiscs < ActiveRecord::Migration[5.1]
  def change
    create_table :building_miscs do |t|
      t.references :building, foreign_key: true
      t.references :misc, foreign_key: true

      t.timestamps
    end
  end
end
