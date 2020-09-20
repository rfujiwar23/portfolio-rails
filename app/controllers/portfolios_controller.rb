class PortfoliosController < ApplicationController
  before_action :current_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolios = Portfolio.all
  end

  def show

  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    portfolio = Portfolio.create(portfolio_params)

    redirect_to portfolio_path(portoflio)
  end

  def edit

  end

  def update
    @portfolio.update(portfolio_params)

    redirect_to portfolio_path(@portfolio)
  end

  def destroy
    @portfolio.destroy

    redirect_to portfolios_path
  end

  private

  def portfolio_params
    params.require(:portoflio).permit(:name, :desription)
  end

  def current_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

end
