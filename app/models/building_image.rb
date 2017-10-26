class BuildingImage < ApplicationRecord
  belongs_to :building

  has_attached_file :image, styles: { 
  	square: ["200X200#", :jpg],
  	medium: ["300x300#", :jpg], 
  	large: ["500x500", :jpg]
  }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
