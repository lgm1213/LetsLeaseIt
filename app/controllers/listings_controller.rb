class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index
    @listings = building.listings
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    @listing  = building.listings.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = building.listings.new(listing_params.merge({state: :pending}))
    respond_to do |format|
      if @listing.save
        format.html { redirect_to [building, @listing], notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to [building, @listing], notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to building_listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = building.listings.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:active, :building_id, :unit_no, :unit_model, :price, :bedrooms, :bath, :half_bath, :sqft, :date_available, :notes, :state)
    end

    def building
      @building ||= Building.find(params[:building_id])
    end
end