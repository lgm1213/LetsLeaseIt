class CreatePoolDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :pool_descriptions do |t|
      t.string :options

      t.timestamps
    end
  end
end
