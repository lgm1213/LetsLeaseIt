class Misc < ApplicationRecord
	has_many :building_miscs
  has_many :buildings, :through => :building_miscs
end
