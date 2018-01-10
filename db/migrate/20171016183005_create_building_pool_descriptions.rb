class CreateBuildingPoolDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :building_pool_descriptions do |t|
      t.references :building, foreign_key: true
      t.references :pool_description, foreign_key: true

      t.timestamps
    end
  end
end
