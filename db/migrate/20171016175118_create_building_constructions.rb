class CreateBuildingConstructions < ActiveRecord::Migration[5.1]
  def change
    create_table :building_constructions do |t|
      t.references :building, foreign_key: true
      t.references :construction, foreign_key: true

      t.timestamps
    end
  end
end
