class LandingController < ApplicationController
	skip_before_action :require_login
	
  def home
  end

  def about
  end

  def contact
  end

  def help
  end
end
