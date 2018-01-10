class BuildingDiningArea < ApplicationRecord
  belongs_to :building
  belongs_to :dining_area
end
