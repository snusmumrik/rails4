class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  has_attached_file :image,
  styles: { large: "600x600>", medium: "300x300>", thumb: "100x100#" },
  url: "/:attachment/:class/:id/:style/:basename.:extension",
  path: ":rails_root/public/:attachment/:class/:id/:style/:basename.:extension",
  default_url: "/:attachment/:class/missing/:style/missing.png",
  preserve_files: "true"

  delegate :path, :url, to: :image

  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
  validates :image_file_name, presence: true

  acts_as_paranoid
end
