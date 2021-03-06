class RentedUnitsController < ApplicationController
  before_action :building
  before_action :appointment
  before_action :set_rented_unit, only: [:show, :edit, :update, :destroy]

  # GET /rented_units
  # GET /rented_units.json
  def index
    @rented_units = appointment.rented_units
  end

  # GET /rented_units/1
  # GET /rented_units/1.json
  def show
  end

  # GET /rented_units/new
  def new
    @rented_unit = appointment.rented_units.new(rented_unit_params)
  end

  # GET /rented_units/1/edit
  def edit
  end

  # POST /rented_units
  # POST /rented_units.json
  def create
    @rented_unit = appointment.rented_units.new(rented_unit_params)

    respond_to do |format|
      if @rented_unit.save
        format.html { redirect_to [building, listing, appointment, @rented_unit], notice: 'Rented unit was successfully created.' }
        format.json { render :show, status: :created, location: @rented_unit }
      else
        format.html { render :new }
        format.json { render json: @rented_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rented_units/1
  # PATCH/PUT /rented_units/1.json
  def update
    respond_to do |format|
      if @rented_unit.update(rented_unit_params)
        format.html { redirect_to [building, listing, appointment, @rented_unit], notice: 'Rented unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @rented_unit }
      else
        format.html { render :edit }
        format.json { render json: @rented_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rented_units/1
  # DELETE /rented_units/1.json
  def destroy
    @rented_unit.destroy
    respond_to do |format|
      format.html { redirect_to building_listing_appointment_rented_units_path(@building, @listing, @appointment), notice: 'Rented unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rented_unit
      @rented_unit = appointment.rented_units.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rented_unit_params
      params.require(:rented_unit).permit(:unit_no, :unit_model, :price, :bedrooms, :bathrooms, :half_baths, :square_footage, :leased, :appointment_id, :notes, :spanstart, :spanend)
    end

    def building
    	@building ||= Building.find(params[:building_id])
    end

    def appointment
    	@appointment ||= Appointment.find(params[:appointment_id])
    end
end
