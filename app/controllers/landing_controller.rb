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
end
