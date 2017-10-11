class ListingImage < ApplicationRecord
  belongs_to :listing
  has_attached_file :image, styles: { thumb: ["64x64#", :jpg] }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
