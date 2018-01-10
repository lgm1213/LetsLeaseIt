class AddCompanyIdToBuildingTable < ActiveRecord::Migration[5.1]
  def change
  	add_column :buildings, :company_id, :integer
  end
end
