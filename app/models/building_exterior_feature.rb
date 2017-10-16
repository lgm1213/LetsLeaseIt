class BuildingExteriorFeature < ApplicationRecord
  belongs_to :building
  belongs_to :exterior_feature
end
