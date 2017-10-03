class AddMlsLinkToListings < ActiveRecord::Migration[5.1]
  def change
  	add_column :listings, :mls_link, :string, :default => nil
  end
end
