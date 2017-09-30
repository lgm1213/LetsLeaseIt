class BuildingsController < ApplicationController
  before_action :set_building, only: [:show, :edit, :update, :destroy]
  protect_from_forgery except: [:index, :open_building_modal, :show]


  # GET /buildings
  # GET /buildings.json
  def index
    @buildings = Building.all
  end

  # GET /buildings/1
  # GET /buildings/1.json
  def show
    render layout: !request.xhr?
  end

  def open_building_modal
    @building= Building.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  # GET /buildings/new
  def new
    @building = Building.new
  end

  # GET /buildings/1/edit
  def edit
  end

  # POST /buildings
  # POST /buildings.json
  def create
    @building = Building.new(building_params.merge({user_id: current_user.id}))

    respond_to do |format|
      if @building.save
        format.html { redirect_to @building, notice: 'Building was successfully created.' }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings/1
  # PATCH/PUT /buildings/1.json
  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings/1
  # DELETE /buildings/1.json
  def destroy
    @building.destroy
    respond_to do |format|
      format.html { redirect_to buildings_url, notice: 'Building was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_params
      params.require(:building).permit(:list_type, :county, :area, :city, :folio, :street, :compass_point, :street_name, :state, :zip, :zip4, :unit, :legal, :zoning, :geographical, :municip_code, :township, :section, :subdivision, :parcel, :map_coordinates, :elementary_school, :middle_school, :senior_high_school, :subdivision_name, :development_name, :model_name_in_mls, :user_id, additional_room_ids: [], amenity_ids: [], approval_ids: [], construction_ids: [], cooling_description_ids: [], design_ids: [], dining_area_ids: [], equipment_ids: [], exterior_feature_ids: [], floor_ids: [], heat_ids: [],  interior_feature_ids: [], leasing_term_ids: [], lot_description_ids: [], misc_ids: [], parking_restriction_ids: [], pet_restriction_ids: [], pool_description_ids: [], rental_dep_incl_ids: [], rental_pay_inc_ids: [], rental_restriction_ids: [], security_ids: [], showing_instruction_ids: [], water_access_ids: [], waterfront_desc_ids: [], window_treatment_ids: [])
    end
end
