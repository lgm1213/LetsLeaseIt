ActiveAdmin.register User do
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
  permit_params do
    permitted = [:username, :email, :password_digest, :password, :password_confirmation, :title, :remember_digest, :role, :company_id]
    params[:user][:password] = params[:user][:password_digest] if params[:user].present?
    permitted.push << :password
    permitted
  end
end
