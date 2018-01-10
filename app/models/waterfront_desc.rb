class WaterfrontDesc < ApplicationRecord
	has_many :building_waterfront_descs
  has_many :buildings, :through => :building_waterfront_descs
end
