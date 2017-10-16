class CreateBuildingInteriorFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :building_interior_features do |t|
      t.references :building, foreign_key: true
      t.references :interior_feature, foreign_key: true

      t.timestamps
    end
  end
end
