class Construction < ApplicationRecord
  has_many :building_constructions
  has_many :buildings, :through => :building_constructions
end
