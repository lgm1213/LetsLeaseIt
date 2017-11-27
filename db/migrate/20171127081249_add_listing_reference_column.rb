class AddListingReferenceColumn < ActiveRecord::Migration[5.1]
  def change
  	remove_column :appointments, :building_id, :integer
  	add_reference :appointments, :listing, foreign_key: true
  end
end
