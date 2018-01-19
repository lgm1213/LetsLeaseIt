ActiveAdmin.register Company do
  permit_params :name, :street_address, :city, :zip, :phone, :point_of_contact
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
  show do
  	attributes_table do
	  	row :name
	  	row :street_address
	  	row :city 
	  	row :state 
	  	row :zip
	  	row :phone
	  	row :point_of_contact
	  end
	  h3 "Buildings"
	render "admin/companies/properties", properties: company.buildings, context: self
	# render "admin/companies/pm", pm: company.users, context: self
	active_admin_comments
  end
end
