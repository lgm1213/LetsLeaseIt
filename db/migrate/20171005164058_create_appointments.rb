class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :realtor_name
      t.string :realtor_phone
      t.datetime :start_time
      t.datetime :end_time
      t.belongs_to :listing, foreign_key: true

      t.timestamps
    end
  end
end
