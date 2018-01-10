class ExteriorFeature < ApplicationRecord
	has_many :building_exterior_features
  has_many :buildings, :through => :building_exterior_features
end
