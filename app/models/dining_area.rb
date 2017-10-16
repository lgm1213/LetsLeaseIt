class DiningArea < ApplicationRecord
	has_many :building_dinings
  has_many :buildings, :through => :building_dinings
end
