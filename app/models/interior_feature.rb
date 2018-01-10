class InteriorFeature < ApplicationRecord
	has_many :building_interior_features
  has_many :buildings, :through => :building_interior_features
end
