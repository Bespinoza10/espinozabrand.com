class Portfolio < ActiveRecord::Base

  
  has_attached_file :image, styles: { large: "800x800", medium: "500x500>", thumb: "200x200>" }

end
