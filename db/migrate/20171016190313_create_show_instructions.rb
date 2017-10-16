class CreateShowInstructions < ActiveRecord::Migration[5.1]
  def change
    create_table :show_instructions do |t|
      t.string :options

      t.timestamps
    end
  end
end
