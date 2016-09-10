class MainController < ApplicationController

  def index
    @contact = Contact.new
    @portfolio = Portfolio.all.order("created_at desc")
  end

end
