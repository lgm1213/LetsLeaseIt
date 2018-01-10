class CreatePetRestrictions < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_restrictions do |t|
      t.string :options

      t.timestamps
    end
  end
end
