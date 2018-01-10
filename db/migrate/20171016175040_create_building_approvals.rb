class CreateBuildingApprovals < ActiveRecord::Migration[5.1]
  def change
    create_table :building_approvals do |t|
      t.references :building, foreign_key: true
      t.references :approval, foreign_key: true

      t.timestamps
    end
  end
end
