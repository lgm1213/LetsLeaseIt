class AddAttachmentImageToListingImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :listing_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :listing_images, :image
  end
end
