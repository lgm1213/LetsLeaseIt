ActiveAdmin.register Listing do

  state_action :uploaded
  state_action :scheduled,confirm: :true
  state_action :shown
  state_action :leased, confirm: :true
  state_action :passed


  form do |f|
    f.inputs "Listing Details" do
      f.input :title
      f.input :body
    end
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

end
