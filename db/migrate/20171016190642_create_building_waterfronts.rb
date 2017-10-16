class CreateBuildingWaterfronts < ActiveRecord::Migration[5.1]
  def change
    create_table :building_waterfronts do |t|
      t.references :building, foreign_key: true
      t.references :waterfront, foreign_key: true

      t.timestamps
    end
  end
end
