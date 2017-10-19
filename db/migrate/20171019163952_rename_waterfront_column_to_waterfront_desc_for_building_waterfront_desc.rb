class RenameWaterfrontColumnToWaterfrontDescForBuildingWaterfrontDesc < ActiveRecord::Migration[5.1]
  def change
  	rename_column :building_waterfront_descs, :waterfront_id, :waterfront_desc_id
  end
end
