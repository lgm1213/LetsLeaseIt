class CreateAdditionalRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :additional_rooms do |t|
      t.string :options

      t.timestamps
    end
  end
end
