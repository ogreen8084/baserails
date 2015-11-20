class Listing < ActiveRecord::Base
  if Rails.env.development?
    has_attached_file :images, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "NoImageAvailable.jpg"
  else
    has_attached_file :images, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "NoImageAvailable.jpg",

      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
      :path => ":style/:id_:filename"
  end

  validates_attachment_content_type :images, content_type: /\Aimage\/.*\Z/
end
