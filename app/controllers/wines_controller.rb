class WinesController < ApplicationController
  require 'fetch_wines.rb'
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
    unless @wine.update(wine_params)
      flash.now[:errors] = @wine.errors.full_messages
      @wine = Wine.find(params[:id])
    end


    render :show
  end

  def search
    render "wines/search"
  end

  def destroy
    @wine = Wine.find(params[:id])
    @wine.destroy
    redirect_to wines_url
  end

  def fetch
    fetch = FetchWines.new(wine_params)
    @products = fetch.objs

    render :results
  end

  def wine_params
    params.require(:wine).permit(:name, :price_min, :price_max, :kind)
  end
end
