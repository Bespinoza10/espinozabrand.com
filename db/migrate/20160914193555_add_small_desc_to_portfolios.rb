class AddSmallDescToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :small_desc, :string
  end

  def self.down
    remove_column :work
  end
end
