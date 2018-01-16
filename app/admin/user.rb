ActiveAdmin.register User do
  role_changeable
	role_changeable
	filter :email
  filter :username
  filter :created_at
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  controller do
    def update
      if params[:user][:company_id].present? and params[:user][:username].present? and params[:user][:email].present? and params[:user][:role].present?
      user = User.find(params[:id])
      user.attributes = permitted_params[:user]
      user.save(validate: false)
      flash[:notice] = 'User was successfully updated.'
      redirect_to admin_user_path
      else
        super
      end
    end
  end
  
  permit_params do
    permitted = [:username, :email, :password_digest, :password, :password_confirmation, :title, :remember_digest, :role, :company_id]
    params[:user][:password] = params[:user][:password_digest] if params[:user].present?
    permitted.push << :password
    permitted
  end
end
