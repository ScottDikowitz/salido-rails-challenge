class WinesController < ApplicationController
  load 'fetch_wines.rb'
  def index
    @wines = Wine.all
    render :index
  end

  def show
    @wine = Wine.find(params[:id])
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
    params.require(:wine).permit(:name, :year, :min, :max)
  end
end
