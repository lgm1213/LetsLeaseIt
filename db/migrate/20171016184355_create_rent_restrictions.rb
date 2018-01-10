class CreateRentRestrictions < ActiveRecord::Migration[5.1]
  def change
    create_table :rent_restrictions do |t|
      t.string :options

      t.timestamps
    end
  end
end
