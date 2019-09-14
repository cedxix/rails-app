class PortfoliosController < ApplicationController
  # index page
  def index
    @portfolio_items = Portfolio.all
  end
end
