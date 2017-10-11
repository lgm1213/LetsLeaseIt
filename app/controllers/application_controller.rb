class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  # before_action :set_time_zone, if: :current_user
  include SessionsHelper
	include BuildingsHelper
	include ApplicationHelper

  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to (super_admin? ? building_path : root_path), :alert => exception.message
  # end

  def after_sign_in_path_for(user)
    if ["super_admin", "admin", "account_manager"].include? user.role
      redirect_to admin_root_path
    elsif ["regional_manager", "property_manager"].include? user.role
      redirect_to user_path(user)
    else
      root_path
    end
  end

private

  def require_login
    unless logged_in?
      flash[:error] = "You Must be logged in to access this page"
      redirect_to login_path
    end
  end

  # def set_time_zone
  #   Time.zone = current_user.time_zone
  # end
end
