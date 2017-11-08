# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171107194415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_admin_managed_resources", force: :cascade do |t|
    t.string "class_name", null: false
    t.string "action", null: false
    t.string "name"
    t.index ["class_name", "action", "name"], name: "active_admin_managed_resources_index", unique: true
  end

  create_table "active_admin_permissions", force: :cascade do |t|
    t.integer "managed_resource_id", null: false
    t.integer "role", limit: 2, default: 0, null: false
    t.integer "state", limit: 2, default: 0, null: false
    t.index ["managed_resource_id", "role"], name: "active_admin_permissions_index", unique: true
  end

  create_table "additional_parking_infos", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "additional_rooms", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amenities", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.string "realtor_name"
    t.string "realtor_phone"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "building_id"
    t.bigint "user_id"
    t.index ["building_id"], name: "index_appointments_on_building_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "approvals", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_additional_parking", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "additional_parking_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["additional_parking_info_id"], name: "index_building_additional_parking_on_additional_parking_info_id"
    t.index ["building_id"], name: "index_building_additional_parking_on_building_id"
  end

  create_table "building_additional_rooms", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "additional_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["additional_room_id"], name: "index_building_additional_rooms_on_additional_room_id"
    t.index ["building_id"], name: "index_building_additional_rooms_on_building_id"
  end

  create_table "building_amenities", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "amenity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_building_amenities_on_amenity_id"
    t.index ["building_id"], name: "index_building_amenities_on_building_id"
  end

  create_table "building_approvals", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "approval_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["approval_id"], name: "index_building_approvals_on_approval_id"
    t.index ["building_id"], name: "index_building_approvals_on_building_id"
  end

  create_table "building_constructions", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "construction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_constructions_on_building_id"
    t.index ["construction_id"], name: "index_building_constructions_on_construction_id"
  end

  create_table "building_cooling_descriptions", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "cooling_description_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_cooling_descriptions_on_building_id"
    t.index ["cooling_description_id"], name: "index_building_cooling_descriptions_on_cooling_description_id"
  end

  create_table "building_designs", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_designs_on_building_id"
    t.index ["design_id"], name: "index_building_designs_on_design_id"
  end

  create_table "building_dining_areas", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "dining_area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_dining_areas_on_building_id"
    t.index ["dining_area_id"], name: "index_building_dining_areas_on_dining_area_id"
  end

  create_table "building_equipments", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_equipments_on_building_id"
    t.index ["equipment_id"], name: "index_building_equipments_on_equipment_id"
  end

  create_table "building_exterior_features", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "exterior_feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_exterior_features_on_building_id"
    t.index ["exterior_feature_id"], name: "index_building_exterior_features_on_exterior_feature_id"
  end

  create_table "building_floors", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "floor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_floors_on_building_id"
    t.index ["floor_id"], name: "index_building_floors_on_floor_id"
  end

  create_table "building_images", force: :cascade do |t|
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_images_on_building_id"
  end

  create_table "building_interior_features", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "interior_feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_interior_features_on_building_id"
    t.index ["interior_feature_id"], name: "index_building_interior_features_on_interior_feature_id"
  end

  create_table "building_lease_terms", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "lease_term_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_lease_terms_on_building_id"
    t.index ["lease_term_id"], name: "index_building_lease_terms_on_lease_term_id"
  end

  create_table "building_miscs", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "misc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_miscs_on_building_id"
    t.index ["misc_id"], name: "index_building_miscs_on_misc_id"
  end

  create_table "building_parking_restrictions", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "parking_restriction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_parking_restrictions_on_building_id"
    t.index ["parking_restriction_id"], name: "index_building_parking_restrictions_on_parking_restriction_id"
  end

  create_table "building_pet_restrictions", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "pet_restriction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_pet_restrictions_on_building_id"
    t.index ["pet_restriction_id"], name: "index_building_pet_restrictions_on_pet_restriction_id"
  end

  create_table "building_pool_descriptions", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "pool_description_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_pool_descriptions_on_building_id"
    t.index ["pool_description_id"], name: "index_building_pool_descriptions_on_pool_description_id"
  end

  create_table "building_rent_payment_incs", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "rent_payment_inc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_rent_payment_incs_on_building_id"
    t.index ["rent_payment_inc_id"], name: "index_building_rent_payment_incs_on_rent_payment_inc_id"
  end

  create_table "building_rent_restrictions", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "rent_restriction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_rent_restrictions_on_building_id"
    t.index ["rent_restriction_id"], name: "index_building_rent_restrictions_on_rent_restriction_id"
  end

  create_table "building_rental_deposits", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "rental_deposit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_rental_deposits_on_building_id"
    t.index ["rental_deposit_id"], name: "index_building_rental_deposits_on_rental_deposit_id"
  end

  create_table "building_roof_descriptions", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "roof_description_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_roof_descriptions_on_building_id"
    t.index ["roof_description_id"], name: "index_building_roof_descriptions_on_roof_description_id"
  end

  create_table "building_securities", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "security_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_securities_on_building_id"
    t.index ["security_id"], name: "index_building_securities_on_security_id"
  end

  create_table "building_show_instructions", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "show_instruction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_show_instructions_on_building_id"
    t.index ["show_instruction_id"], name: "index_building_show_instructions_on_show_instruction_id"
  end

  create_table "building_water_accesses", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "water_access_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_water_accesses_on_building_id"
    t.index ["water_access_id"], name: "index_building_water_accesses_on_water_access_id"
  end

  create_table "building_waterfront_descs", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "waterfront_desc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_waterfront_descs_on_building_id"
    t.index ["waterfront_desc_id"], name: "index_building_waterfront_descs_on_waterfront_desc_id"
  end

  create_table "building_window_treatments", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "window_treatment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_window_treatments_on_building_id"
    t.index ["window_treatment_id"], name: "index_building_window_treatments_on_window_treatment_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.integer "user_id"
    t.string "county"
    t.string "area"
    t.string "city"
    t.string "folio"
    t.string "street"
    t.string "compass_point"
    t.string "street_name"
    t.string "state"
    t.string "zip"
    t.string "zip4"
    t.string "unit"
    t.string "legal"
    t.string "zoning"
    t.string "geographical"
    t.string "municip_code"
    t.string "township"
    t.string "section"
    t.string "subdivision"
    t.string "parcel"
    t.string "map_coordinates"
    t.string "elementary_school"
    t.string "middle_school"
    t.string "senior_high_school"
    t.string "subdivision_name"
    t.string "development_name"
    t.string "model_name_in_mls"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "year_built"
    t.string "year_built_description"
    t.string "stories"
    t.string "convert_beds"
    t.string "garage_spaces"
    t.string "garage_description"
    t.string "carport_spaces"
    t.string "carport_description"
    t.boolean "waterfront"
    t.string "waterfront_frontage"
    t.string "approx_lot_size"
    t.string "lotsf"
    t.boolean "pool"
    t.string "pool_dimensions"
    t.boolean "spa"
    t.string "lot_description"
    t.text "remarks"
    t.text "directions"
    t.text "broker_remarks"
    t.text "internet_remarks"
    t.boolean "pets_allowed"
    t.boolean "cable_available"
    t.string "min_days_to_lease"
    t.string "leases_per_year"
    t.string "application_fee"
    t.string "move_in_cost"
    t.boolean "renewable"
    t.boolean "additional_moving_cost"
    t.string "sewer_description"
    t.string "water"
    t.string "housing_older_persons_act"
    t.string "rs_jan"
    t.string "rs_feb"
    t.string "rs_march"
    t.string "rs_april"
    t.string "rs_may"
    t.string "rs_june"
    t.string "rs_july"
    t.string "rs_aug"
    t.string "rs_sept"
    t.string "rs_oct"
    t.string "rs_nov"
    t.string "rs_dec"
    t.string "list_agent_mls_id"
    t.string "list_agent_alt_phone"
    t.string "co_list_agent_mls_id"
    t.boolean "internet"
    t.boolean "avm"
    t.boolean "blogging"
    t.boolean "address_on_internet"
    t.string "owners_name"
    t.string "owners_phone"
    t.boolean "variable_dual_rate"
    t.boolean "owner_agent"
    t.string "occupancy_information"
    t.boolean "lender_approval"
    t.string "compensation_trans_broker"
    t.string "compensation_buyers_agent"
    t.string "compensation_non_rep"
    t.string "renewal_commission"
    t.string "agent_url"
    t.string "virtual_tour"
    t.string "photo_instructions"
    t.string "status"
    t.string "list_type"
    t.bigint "users_id"
    t.integer "listing_limit", default: 3
    t.string "heat"
    t.integer "company_id"
    t.integer "account_manager_id"
    t.integer "regional_manager_id"
    t.integer "property_manager_id"
    t.index ["user_id"], name: "index_buildings_on_user_id"
    t.index ["users_id"], name: "index_buildings_on_users_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "point_of_contact"
  end

  create_table "companies_users", id: false, force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "user_id", null: false
    t.index ["company_id", "user_id"], name: "index_companies_users_on_company_id_and_user_id"
  end

  create_table "constructions", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cooling_descriptions", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designs", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dining_areas", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exterior_features", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "floors", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interior_features", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lease_terms", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listing_images", force: :cascade do |t|
    t.bigint "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["listing_id"], name: "index_listing_images_on_listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "building_id"
    t.string "unit_no"
    t.string "unit_model"
    t.decimal "price", precision: 7, scale: 2
    t.string "bedrooms"
    t.string "bath"
    t.string "half_bath"
    t.string "sqft"
    t.date "date_available"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mls_link"
    t.bigint "users_id"
    t.string "state"
    t.boolean "active", default: true, null: false
    t.index ["building_id"], name: "index_listings_on_building_id"
    t.index ["users_id"], name: "index_listings_on_users_id"
  end

  create_table "miscs", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_restrictions", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_restrictions", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pool_descriptions", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rent_payment_incs", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rent_restrictions", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rental_deposits", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rented_units", force: :cascade do |t|
    t.string "unit_no"
    t.string "unit_model"
    t.decimal "price", precision: 7, scale: 2
    t.string "bedrooms"
    t.string "bathrooms"
    t.string "half_baths"
    t.string "square_footage"
    t.boolean "leased"
    t.bigint "appointment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
    t.datetime "spanstart"
    t.datetime "spanend"
    t.index ["appointment_id"], name: "index_rented_units_on_appointment_id"
  end

  create_table "roof_descriptions", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "securities", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_instructions", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_digest"
    t.integer "role", limit: 2, default: 0, null: false
    t.integer "company_id"
    t.integer "companies_id"
  end

  create_table "water_accesses", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waterfront_descs", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "window_treatments", force: :cascade do |t|
    t.string "options"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "buildings"
  add_foreign_key "appointments", "users"
  add_foreign_key "building_additional_parking", "additional_parking_infos"
  add_foreign_key "building_additional_parking", "buildings"
  add_foreign_key "building_additional_rooms", "additional_rooms"
  add_foreign_key "building_additional_rooms", "buildings"
  add_foreign_key "building_amenities", "amenities"
  add_foreign_key "building_amenities", "buildings"
  add_foreign_key "building_approvals", "approvals"
  add_foreign_key "building_approvals", "buildings"
  add_foreign_key "building_constructions", "buildings"
  add_foreign_key "building_constructions", "constructions"
  add_foreign_key "building_cooling_descriptions", "buildings"
  add_foreign_key "building_cooling_descriptions", "cooling_descriptions"
  add_foreign_key "building_designs", "buildings"
  add_foreign_key "building_designs", "designs"
  add_foreign_key "building_dining_areas", "buildings"
  add_foreign_key "building_dining_areas", "dining_areas"
  add_foreign_key "building_equipments", "buildings"
  add_foreign_key "building_equipments", "equipment"
  add_foreign_key "building_exterior_features", "buildings"
  add_foreign_key "building_exterior_features", "exterior_features"
  add_foreign_key "building_floors", "buildings"
  add_foreign_key "building_floors", "floors"
  add_foreign_key "building_images", "buildings"
  add_foreign_key "building_interior_features", "buildings"
  add_foreign_key "building_interior_features", "interior_features"
  add_foreign_key "building_lease_terms", "buildings"
  add_foreign_key "building_lease_terms", "lease_terms"
  add_foreign_key "building_miscs", "buildings"
  add_foreign_key "building_miscs", "miscs"
  add_foreign_key "building_parking_restrictions", "buildings"
  add_foreign_key "building_parking_restrictions", "parking_restrictions"
  add_foreign_key "building_pet_restrictions", "buildings"
  add_foreign_key "building_pet_restrictions", "pet_restrictions"
  add_foreign_key "building_pool_descriptions", "buildings"
  add_foreign_key "building_pool_descriptions", "pool_descriptions"
  add_foreign_key "building_rent_payment_incs", "buildings"
  add_foreign_key "building_rent_payment_incs", "rent_payment_incs"
  add_foreign_key "building_rent_restrictions", "buildings"
  add_foreign_key "building_rent_restrictions", "rent_restrictions"
  add_foreign_key "building_rental_deposits", "buildings"
  add_foreign_key "building_rental_deposits", "rental_deposits"
  add_foreign_key "building_roof_descriptions", "buildings"
  add_foreign_key "building_securities", "buildings"
  add_foreign_key "building_securities", "securities"
  add_foreign_key "building_show_instructions", "buildings"
  add_foreign_key "building_show_instructions", "show_instructions"
  add_foreign_key "building_water_accesses", "buildings"
  add_foreign_key "building_water_accesses", "water_accesses"
  add_foreign_key "building_waterfront_descs", "buildings"
  add_foreign_key "building_waterfront_descs", "waterfront_descs"
  add_foreign_key "building_window_treatments", "buildings"
  add_foreign_key "building_window_treatments", "window_treatments"
  add_foreign_key "buildings", "users"
  add_foreign_key "listing_images", "listings"
  add_foreign_key "listings", "buildings"
  add_foreign_key "rented_units", "appointments"
end
