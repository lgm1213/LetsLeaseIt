class AddColumnsToRentedUnits < ActiveRecord::Migration[5.1]
  def change
  	add_column :rented_units, :notes, :text
  	add_column :rented_units, :spanstart, :datetime
  	add_column :rented_units, :spanend, :datetime  
  end
end
