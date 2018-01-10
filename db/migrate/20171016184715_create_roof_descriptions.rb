class CreateRoofDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :roof_descriptions do |t|
      t.string :options

      t.timestamps
    end
  end
end
