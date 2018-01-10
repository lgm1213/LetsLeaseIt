class CreateBuildingWindowTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :building_window_treatments do |t|
      t.references :building, foreign_key: true
      t.references :window_treatment, foreign_key: true

      t.timestamps
    end
  end
end
