class LandingController < ApplicationController
	skip_before_action :require_login
	
  def home
    # path =
    # case current_user.role
    #   when current_user.role == 'property_manager'
    #     user_path
    #   when current_user.role == 'regional_manager'
    #     user_path
    #   when current_user.role == 'account_manager'
    #     admin_root_path
    #   when current_user.role == 'admin'
    #     admin_root_path
    #   when current_user.role == 'super_admin'
    #     admin_root_path
    #   else !current_user
        
    #   end
    #   redirect_to path
  end

  def about
  end

  def contact
  end

  def help
  end
end
