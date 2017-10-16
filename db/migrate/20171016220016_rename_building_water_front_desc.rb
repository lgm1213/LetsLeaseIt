class RenameBuildingWaterFrontDesc < ActiveRecord::Migration[5.1]
  def change
  	rename_table :building_waterfronts, :building_waterfront_descs
  end
end
