class CreateDiningAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :dining_areas do |t|
      t.string :options

      t.timestamps
    end
  end
end
