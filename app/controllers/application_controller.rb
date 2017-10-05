class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  include SessionsHelper
	include BuildingsHelper
	include ApplicationHelper  


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to (super_admin? ? building_path : root_path), :alert => exception.message
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end



private
  
  def require_login
    unless logged_in?
      flash[:error] = "You Must be logged in to access this page"
      redirect_to login_path
    end
  end
end
