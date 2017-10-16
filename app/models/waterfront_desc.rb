class WaterfrontDesc < ApplicationRecord
	has_many :building_waterfront_desc
  has_many :waterfront_desc, :through => :building_waterfront_desc
end
