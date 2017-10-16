class BuildingSecurity < ApplicationRecord
  belongs_to :building
  belongs_to :security
end
