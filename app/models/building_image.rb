class BuildingImage < ApplicationRecord
  belongs_to :building

  has_attached_file :image, styles: { square: ["200x200#", :jpg] }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
