class CreateSecurities < ActiveRecord::Migration[5.1]
  def change
    create_table :securities do |t|
      t.string :options

      t.timestamps
    end
  end
end
