class CreateInteriorFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :interior_features do |t|
      t.string :options

      t.timestamps
    end
  end
end
