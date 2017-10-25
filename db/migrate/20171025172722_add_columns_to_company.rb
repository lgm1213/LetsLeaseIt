class AddColumnsToCompany < ActiveRecord::Migration[5.1]
  def change
  	add_column :companies, :street_address, :string
  	add_column :companies, :city, :string
  	add_column :companies, :state, :string
  	add_column :companies, :zip, :string
  	add_column :companies, :phone, :string
  	add_column :companies, :point_of_contact, :string
  end
end
