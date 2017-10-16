class CreateBuildingExteriorFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :building_exterior_features do |t|
      t.references :building, foreign_key: true
      t.references :exterior_feature, foreign_key: true

      t.timestamps
    end
  end
end
