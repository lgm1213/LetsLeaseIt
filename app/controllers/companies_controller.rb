class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def building_analytics
    from, to = get_filtered_time(params[:filter]) if params[:filter] != "datepicker" 
    from, to = params[:start], params[:end] if params[:start].present?
    buildings = Company.find(params[:company_id]).buildings
    appointments,rented_units = Company.building_analytics_data(buildings,to,from)
    la_ratio = []
    rented_units.each.with_index {|r,index| la_ratio << ((r.to_f/appointments[index].to_f).nan? ? 0 : (r.to_f/appointments[index].to_f)) }
    render json: {buildings: buildings, appointments:appointments, rented_units:rented_units, la_ratio:la_ratio }
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def get_filtered_time(filter)
      from = eval("Time.zone.now.beginning_of_" + filter)
      to =  eval("Time.zone.now.end_of_" + filter)
      return from, to
    end

    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :street_address, :city, :state, :zip, :point_of_contact, :phone, user_ids:[])
    end
end
