class BuildingApproval < ApplicationRecord
  belongs_to :building
  belongs_to :approval
end
