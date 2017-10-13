class AddListingLimtsToBuilding < ActiveRecord::Migration[5.1]
  def change
  	add_column :buildings, :listing_limit, :integer, default: 3
  end
end
