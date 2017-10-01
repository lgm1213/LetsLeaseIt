class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.belongs_to :building, foreign_key: true
      t.string :unit_no
      t.string :model_name
      t.decimal :price, precision: 7, scale: 2
      t.string :bedrooms
      t.string :bath
      t.string :half_bath
      t.string :sqft
      t.date :date_available
      t.text :notes

      t.timestamps
    end
  end
end
