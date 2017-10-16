class CreateLeaseTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :lease_terms do |t|
      t.string :options

      t.timestamps
    end
  end
end
