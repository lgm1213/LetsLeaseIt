class RemoveColumnsFromBuildings < ActiveRecord::Migration[5.1]
  def change
  	remove_column :buildings, :furn_annual_rent
  	remove_column :buildings, :furn_seasonal_rent
  	remove_column :buildings, :furn_off_rent
  	remove_column :buildings, :unfurn_annual_rent
  	remove_column :buildings, :unfurn_seasonal_rent
  	remove_column :buildings, :unfurn_off_rent
  end
end
