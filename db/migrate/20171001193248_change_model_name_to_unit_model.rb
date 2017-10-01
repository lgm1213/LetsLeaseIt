class ChangeModelNameToUnitModel < ActiveRecord::Migration[5.1]
  def change
  	rename_column :listings, :model_name, :unit_model
  end
end
