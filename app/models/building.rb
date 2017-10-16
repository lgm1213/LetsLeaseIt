class Building < ApplicationRecord
  belongs_to :user
  has_many :listings, dependent: :destroy
  has_many :appointments, through: :listings

  #Multiple Checkbox Collection relationships
    # has many through relationships for multiple data values with select checkboxes
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

  has_many :building_dinings
  has_many :dining_areas, :through => :building_dinings

  has_many :building_equipments
  has_many :equipments, :through => :building_equipments

  has_many :building_exterior_features
  has_many :exterior_features, :through => :building_exterior_features

  has_many :building_floors
  has_many :floors, :through => :building_floors

  has_many :building_heats
  has_many :heats, :through => :building_heats

  has_many :building_interior_features
  has_many :interior_features, :through => :building_interior_features

  has_many :building_leasing_terms
  has_many :leasing_terms, :through => :building_leasing_terms

  has_many :building_lot_descriptions
  has_many :lot_descriptions, :through => :building_lot_descriptions

  has_many :building_miscs
  has_many :misc, :through => :building_miscs

  has_many :building_parking_restrictions
  has_many :parking_restrictions, :through => :building_parking_restrictions
  
  has_many :building_pet_restrictions
  has_many :pet_restrictions, :through => :building_pet_restrictions

  has_many :building_pool_descriptions
  has_many :pool_descriptions, :through => :building_pool_descriptions

  has_many :building_rental_pay_inc
  has_many :rental_pay_inc, :through => :building_rental_pay_inc
 
  has_many :building_rental_dep_incls
  has_many :rental_dep_incls, :through => :building_rental_dep_incls

  has_many :building_rental_restrictions
  has_many :rental_restrictions, :through => :building_rental_restrictions

  has_many :building_roof_descriptions
  has_many :roof_descriptions, :through => :building_roof_descriptions

  has_many :building_securities
  has_many :securities, :through => :building_securities

  has_many :building_showing_instructions
  has_many :showing_instructions, :through => :building_showing_instructions
  
  has_many :building_window_treatments
  has_many :window_treatments, :through => :building_window_treatments

  has_many :building_water_accesses
  has_many :water_accesses, :through => :building_water_accesses

  has_many :building_waterfront_desc
  has_many :waterfront_desc, :through => :building_waterfront_desc
  
end
