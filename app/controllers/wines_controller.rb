class WinesController < ApplicationController
  load 'fetch_wines.rb'
  def index
    @wines = Wine.all
    render :index
  end

  def show
    @wine = Wine.find(params[:id])
  end

  def edit
    @edit = "hello world"
    @wine = Wine.find(params[:id])
    render :edit
  end

  def update
    @wine = Wine.find(params[:id])
    @wine.update(wine_params)
    render json: @wine
  end

  def search
    @test = "hello"
    render "wines/search"
  end

  def fetch
    fetch = FetchWines.new(wine_params)
    @products = fetch.objs

    render :results
  end

  def wine_params
    params.require(:wine).permit(:name, :price_min, :price_max)
  end
end
