class Design < ApplicationRecord
	has_many :building_designs
  has_many :buildings, :through => :building_designs
end
