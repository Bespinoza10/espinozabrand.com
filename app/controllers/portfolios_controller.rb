class PortfoliosController < ApplicationController
  before_action :find_portfolio,  only: [:show, :edit, :update, :destroy]


  def index
    @portfolio = Portfolio.all.order("created_at desc")
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new portfolio_params

    if @portfolio.save
      redirect_to @portfolio, notice: "Awesome Brandon! That portfolio was succesfully saved!"
    else
      render 'new'
    end
  end

  def show
  end

  def edit

  end

  def update
    if @portfolio.update portfolio_params
      redirect_to @portfolio, notice: "Ahhww Yea!!! Your portfolio was saved succesfully!"
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio.destroy
    redirect_to portfolios_path
  end

  private

  def find_portfolio
    # @portfolio = portfolio.friendly.find(params[:id])
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:name, :description, :link, :image, :slug)
  end

end
