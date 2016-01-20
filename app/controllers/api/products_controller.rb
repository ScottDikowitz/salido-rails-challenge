class Api::ProductsController < ApplicationController

  def list
    @wines = Wine.all
    render json: @wines
  end

end
