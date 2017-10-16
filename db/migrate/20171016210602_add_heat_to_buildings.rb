class AddHeatToBuildings < ActiveRecord::Migration[5.1]
  def change
  	add_column :buildings, :heat, :string
  end
end
