class AddUserIdsToBuilding < ActiveRecord::Migration[5.1]
  def change
    add_column :buildings, :account_manager_id, :integer
    add_column :buildings, :regional_manager_id, :integer
    add_column :buildings, :property_manager_id, :integer
  end
end
