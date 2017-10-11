class LandingController < ApplicationController
	skip_before_action :require_login
	
  def home
    if ["super_admin", "admin", "account_manager"].include? current_user.role
      redirect_to admin_root_path
    elsif ["regional_manager", "property_manager"].include? current_user.role
      redirect_to user_path(current_user)
    else
      redirect_to landing_home_path
    end  
  end

  def about
  end

  def contact
  end

  def help
  end
end
