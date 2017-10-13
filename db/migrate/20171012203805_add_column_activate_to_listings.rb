class AddColumnActivateToListings < ActiveRecord::Migration[5.1]
  def change
  	add_column :listings, :active, :boolean, null: false, default: false
  end
end
