class BuildingFloor < ApplicationRecord
  belongs_to :building
  belongs_to :floor
end
