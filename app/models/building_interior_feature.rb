class BuildingInteriorFeature < ApplicationRecord
  belongs_to :building
  belongs_to :interior_feature
end
