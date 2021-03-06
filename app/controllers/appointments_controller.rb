class AppointmentsController < ApplicationController
  load_and_authorize_resource
  before_action :building
  before_action :listing
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    # @all_appointments = building.listings.all.appointments.order('start_time') 
    @appointments = building.appointments.order('start_time')
    @listings = building.listings.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = listing.appointments.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = listing.appointments.new(appointment_params.merge({listing_id: listing.id, user_id: current_user.id}))
    respond_to do |format|
      if @appointment.save
        format.html { redirect_to [building, listing, @appointment], notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to [building, listing, @appointment], notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to building_listing_appointments_path, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = building.appointments.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:realtor_name, :realtor_phone, :start_time, :end_time, :listing_id, :user_id)
    end

    def building
      @building ||= Building.find(params[:building_id])
    end

    def listing
      @listing ||= building.listings.find(params[:listing_id])
    end

end
