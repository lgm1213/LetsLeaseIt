class ChangeDefaultListingToActive < ActiveRecord::Migration[5.1]
  def change
  	change_column :listings, :active, :boolean, default: true, null: false
  end
end
