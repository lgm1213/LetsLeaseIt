class CreateRentedUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :rented_units do |t|
      t.string :unit_no
      t.string :unit_model
      t.decimal :price, precision: 7, scale: 2
      t.string :bedrooms
      t.string :bathrooms
      t.string :half_baths
      t.string :square_footage
      t.boolean :leased
      t.belongs_to :appointment, foreign_key: true

      t.timestamps
    end
  end
end
