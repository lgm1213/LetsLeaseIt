class DropWaterfrontDescFromBuilding < ActiveRecord::Migration[5.1]
  def change
  	remove_column :buildings, :waterfront_desc, :string
  	remove_column :buildings, :parking_restrictions, :string
  	remove_column :buildings, :roof_description, :string
  	remove_column :buildings, :construction, :string
  	remove_column :buildings, :water_access, :string
  	remove_column :buildings, :design, :string
  	remove_column :buildings, :pool_description, :string
  	remove_column :buildings, :pet_restrictions, :string

  end
end
