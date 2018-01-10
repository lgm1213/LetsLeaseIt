class CreateExteriorFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :exterior_features do |t|
      t.string :options

      t.timestamps
    end
  end
end
