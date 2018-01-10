class LeaseTerm < ApplicationRecord
	has_many :building_leasing_terms
  has_many :buildings, :through => :building_leasing_terms
end
