class LandingController < ApplicationController
	skip_before_action :require_login

  def home
    after_sign_in_path_for(current_user) if current_user.present?
  end

  def about
  end

  def contact
  end

  def help
  end

  def splash
    @listing = Listing.all
    @building = Building.all if params[:location].blank?
    @building = Building.search_result(params[:location], params[:no_of_bed_rooms], params[:no_of_bath_rooms], params[:min_sqr_ft], params[:max_sqr_ft], params[:price]) if params[:location].present?
    @error = true if @building.blank?
    @building = Building.all if @building.blank?
  end
  
end

