ActiveAdmin.register Listing do

  state_action :uploaded, confirm: :true
  state_action :scheduled,confirm: :true
  state_action :shown, confirm: :true
  state_action :leased, confirm: :true
  state_action :passed, confirm: :true


  ##TODO - Why do you put title and body in the form even we don't have these attributes in Listing Model?
  form do |f|
    f.actions
  end

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
    def create
      building = Building.find(params[:listing][:building_id])
      if building.unit.to_i == building.listings.size
        flash[:error] = 'You have already reached to the maximum listing limit for this building'
        redirect_to admin_listings_path
      else
        super
      end
    end
  end

  permit_params :building_id, :unit_no, :unit_model, :price, :bedrooms, :bath, :half_bath, 
                :sqft, :date_available, :notes, :state

end
