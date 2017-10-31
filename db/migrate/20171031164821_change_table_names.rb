class ChangeTableNames < ActiveRecord::Migration[5.1]
  def change
  	rename_table :buildings, :rental_communities
  	rename_table :building_additional_parking, :rent_comm_add_parking
  	rename_table :building_additional_rooms, :rent_comm_add_rooms
  	rename_table :building_amenities, :rent_comm_amenities
  	rename_table :building_approvals, :rent_comm_approvals
  	rename_table :building_constructions, :rent_comm_constructions
  	rename_table :building_cooling_descriptions, :rent_comm_cool_descs
  	rename_table :building_designs, :rent_comm_designs
  	rename_table :building_dining_areas, :rent_comm_dining_areas
  	rename_table :building_equipments, :rent_comm_equipments
  	rename_table :building_exterior_features, :rent_comm_exterior_features
  	rename_table :building_floors, :rent_comm_floors
  	rename_table :building_images, :rent_comm_images
  	rename_table :building_interior_features, :rent_comm_interior_features
  	rename_table :building_lease_terms, :rent_comm_lease_terms
  	rename_table :building_miscs, :rent_comm_miscs
  	rename_table :building_parking_restrictions, :rent_comm_park_restrictions
  	rename_table :building_pet_restrictions, :rent_comm_pet_restrictions
  	rename_table :building_pool_descriptions, :rent_comm_pool_descriptions
  	rename_table :building_rent_restrictions, :rent_comm_rent_restrictions
  	rename_table :building_rental_deposits, :rent_comm_rental_deposits
  	rename_table :building_roof_descriptions, :rent_comm_roof_descriptions
  	rename_table :building_securities, :rent_comm_securities
  	rename_table :building_show_instructions, :rent_comm_show_instructions
  	rename_table :building_water_accesses, :rent_comm_water_accesses
  	rename_table :building_waterfront_descs, :rent_comm_waterfront_descs
  	rename_table :building_window_treatments, :rent_comm_window_treatmentss
  	rename_table :listings, :m_l_s_listings
  	rename_table :listing_images, :m_l_s_listing_images
  end
end
