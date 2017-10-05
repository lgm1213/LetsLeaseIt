class AddCompanyTable < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name

      t.timestamps
    end
  end
  def change
  	add_reference :companies, :users, index: true
  	add_reference :users, :companies, index: true
  	add_reference :listings, :users, index: true
  	add_reference :buildings, :users, index: true
  end
end
