class BuildingPoolDescription < ApplicationRecord
  belongs_to :building
  belongs_to :pool_description
end
