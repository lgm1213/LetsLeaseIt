class Security < ApplicationRecord
	has_many :building_securities
  has_many :securities, :through => :building_securities
end
