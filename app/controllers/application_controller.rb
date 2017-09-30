class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login
  include SessionsHelper

private
  
  def require_login
    unless logged_in?
      flash[:error] = "You Must be logged in to access this page"
      redirect_to login_path
    end
  end
end
