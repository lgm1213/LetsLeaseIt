class BuildingAdditionalParking< ApplicationRecord
  self.table_name = 'building_additional_parking'
  belongs_to :building
  belongs_to :additional_parking_info
end
