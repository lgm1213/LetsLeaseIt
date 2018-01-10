class BuildingCoolingDescription < ApplicationRecord
  belongs_to :building
  belongs_to :cooling_description
end
