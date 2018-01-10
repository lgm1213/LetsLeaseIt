class CreateBuildingSecurities < ActiveRecord::Migration[5.1]
  def change
    create_table :building_securities do |t|
      t.references :building, foreign_key: true
      t.references :security, foreign_key: true

      t.timestamps
    end
  end
end
