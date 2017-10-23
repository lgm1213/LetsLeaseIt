class CreateBuildingImages < ActiveRecord::Migration[5.1]
  def change
    create_table :building_images do |t|
      t.attachment :image
      t.belongs_to :building, foreign_key: true

      t.timestamps
    end
  end
end
