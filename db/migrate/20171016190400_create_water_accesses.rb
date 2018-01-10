class CreateWaterAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :water_accesses do |t|
      t.string :options

      t.timestamps
    end
  end
end
