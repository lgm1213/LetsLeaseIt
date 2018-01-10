class CreateBuildingLeaseTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :building_lease_terms do |t|
      t.references :building, foreign_key: true
      t.references :lease_term, foreign_key: true

      t.timestamps
    end
  end
end
