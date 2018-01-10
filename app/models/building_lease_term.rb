class BuildingLeaseTerm < ApplicationRecord
  belongs_to :building
  belongs_to :lease_term
end
