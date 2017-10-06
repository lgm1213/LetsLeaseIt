class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  before_filter :set_time_zone, if: :user_signed_in?
  include SessionsHelper
	include BuildingsHelper
	include ApplicationHelper  


  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to (super_admin? ? building_path : root_path), :alert => exception.message
  # end

  # def current_ability
  #   @current_ability ||= Ability.new(current_user)
  # end



private
  
  def require_login
    unless logged_in?
      flash[:error] = "You Must be logged in to access this page"
      redirect_to login_path
    end
  end

  def set_time_zone
    Time.zone = current_user.time_zone
  end
end
