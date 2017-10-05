ActiveAdmin.register Listing do
	controller do
		def create
			params[:listing][:building_id] = current_user.building_id if property_manager
		end
	end
end
