class BuildingEquipment < ApplicationRecord
  belongs_to :building
  belongs_to :equipment
end
