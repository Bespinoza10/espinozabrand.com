class AddAboutToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :about, :text
  end
end
