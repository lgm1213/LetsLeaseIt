class RenameWaterfrontTable < ActiveRecord::Migration[5.1]
  def change
  	rename_table :waterfronts, :waterfront_descs
  end
end
