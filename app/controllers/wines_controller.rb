class WinesController < ApplicationController
  def index
    render :index
  end

  def search
    @test = "hello"
    render "wines/search"
  end
end
