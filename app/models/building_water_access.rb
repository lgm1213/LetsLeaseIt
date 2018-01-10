class BuildingWaterAccess < ApplicationRecord
  belongs_to :building
  belongs_to :water_access
end
