class AddColumnsToBuilding < ActiveRecord::Migration[5.1]
  def change
    add_column :buildings, :account_manager, :integer
    add_column :buildings, :regional_manager, :integer
    add_column :buildings, :property_manager, :integer
  end
end
