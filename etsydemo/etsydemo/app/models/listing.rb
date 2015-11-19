class Listing < ActiveRecord::Base
  has_attached_file :images, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "NoImageAvailable.jpg"
  validates_attachment_content_type :images, content_type: /\Aimage\/.*\Z/
end
