class CreateCoolingDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :cooling_descriptions do |t|
      t.string :options

      t.timestamps
    end
  end
end
