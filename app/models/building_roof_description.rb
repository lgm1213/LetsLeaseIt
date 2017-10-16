class BuildingRoofDescription < ApplicationRecord
  belongs_to :building
  belongs_to :roof_description
end
