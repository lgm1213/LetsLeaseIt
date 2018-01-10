class Approval < ApplicationRecord
	has_many :building_approvals
  has_many :buildings, :through => :building_approvals
end
