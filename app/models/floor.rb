class Floor < ApplicationRecord
	has_many :building_floors
  has_many :buildings, :through => :building_floors
end
