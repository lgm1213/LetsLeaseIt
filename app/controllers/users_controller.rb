class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :require_login, only: [:new, :create]

  # GET /users
  # GET /users.json
  def index
    if current_user.role == "super_admin" || current_user.role ==  "admin" #[99, 100]
      @users = User.all
    else
      redirect_to user_path(current_user)
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    case current_user.role
      when "property_manager"
        @buildings = Building.where(:property_manager_id => current_user.id)
      when "account_manager"
        @buildings = Building.where(:account_manager_id => current_user.id)
      when "regional_manager"
        @buildings = Building.where(:regional_manager_id => current_user.id)
      when "super_admin", "admin"
        @buildings = Building.all 
    end
  end

  # GET /users/new
  def new
    @user = User.new
    @buildings = Building.all
  end

  # GET /users/1/edit
  def edit
    @building = Building.all
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
      if @user.role == 'renter'
        @user.company_id == 24
        @user.title == 'renter'
      elsif @user.role = 'realtor'
        @user.company_id == 25
        @user.title == 'realtor'
      end
      @user.company_id = user_params[:company_id] if logged_in?
      @user.role = user_params[:role] if logged_in?
      @user.title = user_params[:title] if logged_in?
      @user.save
    respond_to do |format|
      if @user.save and !logged_in?
        log_in @user
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      elsif @user.save and logged_in?
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, notce: 'User was not created, please try again.' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if params[:user][:password].blank?          
      respond_to do |format|        
        if @user.update(user_update_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|        
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :role, :title, :company_id, company_ids:[])
    end

    def user_update_params
      params.require(:user).permit(:username, :email, :role, :title, :company_id, company_ids:[])
    end
end



