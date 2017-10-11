ActiveAdmin.register Listing do

  state_action :uploaded, confirm: :true
  state_action :scheduled,confirm: :true
  state_action :shown, confirm: :true
  state_action :leased, confirm: :true
  state_action :passed, confirm: :true

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
      if params[:listing].present? && params[:listing][:building_id].present?
        building = Building.find(params[:listing][:building_id])
        if building.unit.to_i == building.listings.size
          flash[:error] = 'You have already reached to the maximum listing limit for this building'
          redirect_to admin_listings_path
        else
          super
        end
      else
        super
      end
    end
  end

  form do |f|
    f.inputs "Listings" do
      f.input :building_id, as: :select, collection: Building.all.map { |m| [m.city, m.id] }
      f.input :unit_no
      f.input :unit_model
      f.input :price
      f.input :bedrooms
      f.input :bath
      f.input :half_bath
      f.input :sqft
      f.input :date_available
      f.input :notes
      f.input :state, as: :select, collection: Listing::STATE
    end
    f.inputs "Listing images" do
      f.has_many :listing_images do |listing_image|
        listing_image.input :image, :as => :file, :label => "Listing Image" #:hint => listing_image.object.image.nil? ? listing_image.template.content_tag(:span, "No Image Yet") : listing_image.template.image_tag(listing_image.object.image.url(:thumb))
        #listing_image.input :_destroy, :as=>:boolean, :required => false, :label => 'Remove image'
      end
    end
    f.actions
  end

  permit_params :building_id, :unit_no, :unit_model, :price, :bedrooms, :bath, :half_bath,
                :sqft, :date_available, :notes, :state, listing_images_attributes: [:image, :listing_id]

end