class CreateBuildingShowInstructions < ActiveRecord::Migration[5.1]
  def change
    create_table :building_show_instructions do |t|
      t.references :building, foreign_key: true
      t.references :show_instruction, foreign_key: true

      t.timestamps
    end
  end
end
