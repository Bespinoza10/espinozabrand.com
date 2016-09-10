class AddAttachmentImageToPortfolios < ActiveRecord::Migration
  def self.up
    change_table :portfolios do |t|
      t.attachment :image_main
      t.attachment :web_image
      t.attachment :logo_image
      t.attachment :bc_image
    end
  end

  def self.down
    remove_attachment :portfolios, :image_main
    remove_attachment :portfolios, :web_image
    remove_attachment :portfolios, :logo_image
    remove_attachment :portfolios, :bc_image
  end
end
