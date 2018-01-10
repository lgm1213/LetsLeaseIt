class PoolDescription < ApplicationRecord
	has_many :building_pool_descriptions
  has_many :buildings, :through => :building_pool_descriptions
end
