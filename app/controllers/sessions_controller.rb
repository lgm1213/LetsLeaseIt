class SessionsController < ApplicationController
  skip_before_action :require_login


  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username])
  	if user && user.authenticate(params[:session][:password])
      #log the user in and redirect to user's show page
  		log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  		# redirect user according to his role
      after_sign_in_path_for(user)
	  else
	    flash.now[:danger] = 'Invalid email/password combination'
	    render 'new'
	  end
  end

  def destroy
  	log_out if logged_in?
  	redirect_to root_url
  end
end
