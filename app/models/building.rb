class Building < ApplicationRecord
  belongs_to :company
  belongs_to :user

  belongs_to :account_manager, foreign_key: :account_manager_id, class_name: 'User', optional: true
  belongs_to :regional_manager, foreign_key: :regional_manager_id, class_name: 'User'
  belongs_to :property_manager, foreign_key: :property_manager_id, class_name: 'User'

  has_many :listings, dependent: :destroy
  has_many :appointments

  has_many :building_images, inverse_of: :building

  #Multiple Checkbox Collection relationships
  # has many through relationships for multiple data values with select checkboxes
  
  has_many :building_additional_parkings
  has_many :additional_parking_infos, :through => :building_additional_parkings

  has_many :building_additional_rooms
  has_many :additional_rooms, :through => :building_additional_rooms

  has_many :building_amenities
  has_many :amenities, :through => :building_amenities

  has_many :building_approvals
  has_many :approvals, :through => :building_approvals

  has_many :building_constructions
  has_many :constructions, :through => :building_constructions

  has_many :building_cooling_descriptions
  has_many :cooling_descriptions, :through => :building_cooling_descriptions

  has_many :building_designs
  has_many :designs, :through => :building_designs

  has_many :building_dining_areas
  has_many :dining_areas, :through => :building_dining_areas

  has_many :building_equipments
  has_many :equipments, :through => :building_equipments

  has_many :building_exterior_features
  has_many :exterior_features, :through => :building_exterior_features

  has_many :building_floors
  has_many :floors, :through => :building_floors

  has_many :building_interior_features
  has_many :interior_features, :through => :building_interior_features

  has_many :building_lease_terms
  has_many :lease_terms, :through => :building_lease_terms

  has_many :building_miscs
  has_many :misc, :through => :building_miscs

  has_many :building_parking_restrictions
  has_many :parking_restrictions, :through => :building_parking_restrictions
  
  has_many :building_pet_restrictions
  has_many :pet_restrictions, :through => :building_pet_restrictions

  has_many :building_pool_descriptions
  has_many :pool_descriptions, :through => :building_pool_descriptions

  has_many :building_rent_payment_incs
  has_many :rent_payment_incs, :through => :building_rent_payment_incs
 
  has_many :building_rental_deposits
  has_many :rental_deposits, :through => :building_rental_deposits

  has_many :building_rent_restrictions
  has_many :rent_restrictions, :through => :building_rent_restrictions

  has_many :building_roof_descriptions
  has_many :roof_descriptions, :through => :building_roof_descriptions

  has_many :building_securities
  has_many :securities, :through => :building_securities

  has_many :building_show_instructions
  has_many :show_instructions, :through => :building_show_instructions
  
  has_many :building_window_treatments
  has_many :window_treatments, :through => :building_window_treatments

  has_many :building_water_accesses
  has_many :water_accesses, :through => :building_water_accesses

  has_many :building_waterfront_descs
  has_many :waterfront_descs, :through => :building_waterfront_descs

  accepts_nested_attributes_for :building_images, reject_if: :all_blank, allow_destroy: true
  
  def self.search_result(location, bedroom, bath, min_sqr_ft, max_sqr_ft, price)
    buildings = Building.all
    buildings = buildings.where(city: location) if location!= "City" 
    building_bed_bath = Listing.where("bedrooms = ? or bath = ?", bedroom, bath) if bedroom.present? || bath.present?
    buildings_id = building_bed_bath.pluck(:building_id) if bedroom.present? || bath.present?
    buildings = buildings.where(id: buildings_id) if bedroom.present? || bath.present?
    building_price = Listing.where(price: price.to_f) if price.present?
    building_ids = building_price.pluck(:building_id) if price.present?
    buildings = buildings.where(id: building_ids) if price.present?
    building_sqft = Listing.where('sqft::int BETWEEN ? AND ?', min_sqr_ft.to_i, max_sqr_ft.to_i) rescue [] if min_sqr_ft.present? && max_sqr_ft.present?
    building_ids_sqft = building_sqft.pluck(:building_id) rescue [] if min_sqr_ft.present? && max_sqr_ft.present?
    buildings = buildings.where(id: building_ids_sqft) if min_sqr_ft.present? && max_sqr_ft.present?
    return buildings
  end
end
