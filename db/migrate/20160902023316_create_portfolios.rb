class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :work
      t.text :web_description
      t.text :logo_description
      t.text :bc_description
      t.string :link

      t.timestamps null: false
    end
  end
end
