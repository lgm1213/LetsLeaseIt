class CreateWaterfronts < ActiveRecord::Migration[5.1]
  def change
    create_table :waterfronts do |t|
      t.string :options

      t.timestamps
    end
  end
end
