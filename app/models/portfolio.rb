class Portfolio < ActiveRecord::Base

  has_attached_file :image_main, styles: { large: "800x800", medium: "500x500>", thumb: "200x200>" }
  has_attached_file :web_image, styles: { large: "800x800", medium: "500x500>", thumb: "200x200>" }
  has_attached_file :logo_image, styles: { large: "800x800", medium: "500x500>", thumb: "200x200>" }
  has_attached_file :bc_image, styles: { large: "800x800", medium: "500x500>", thumb: "200x200>" }
  validates_attachment_content_type :image_main, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :web_image, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :logo_image, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :bc_image, content_type: /\Aimage\/.*\z/

end
