class AddAttachmentImagesToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :listings, :images
  end
end
