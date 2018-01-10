class AddColumnsToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_reference :appointments, :building, foreign_key: true
    add_reference :appointments, :user, foreign_key: true
    remove_column :appointments, :listing_id, :integer
  end
end
