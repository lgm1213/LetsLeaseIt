class Equipment < ApplicationRecord
	has_many :building_equipments
  has_many :buildings, :through => :building_equipments
end
