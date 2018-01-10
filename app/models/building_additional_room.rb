class BuildingAdditionalRoom < ApplicationRecord
  belongs_to :building
  belongs_to :additional_room
end
