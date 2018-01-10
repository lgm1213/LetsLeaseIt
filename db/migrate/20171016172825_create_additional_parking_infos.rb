class CreateAdditionalParkingInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :additional_parking_infos do |t|
      t.string :options

      t.timestamps
    end
  end
end
