class ShowInstruction < ApplicationRecord
	has_many :building_show_instructions
  has_many :buildings, :through => :building_show_instructions
end
