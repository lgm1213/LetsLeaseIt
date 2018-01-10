class CreateBuildingDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :building_designs do |t|
      t.references :building, foreign_key: true
      t.references :design, foreign_key: true

      t.timestamps
    end
  end
end
