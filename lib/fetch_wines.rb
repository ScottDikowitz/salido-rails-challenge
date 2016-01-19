class FetchWines
  def initialize(query)
    @wines = []
    @min = query["price_min"] || 1
    @max = query["price_max"] || 99999
    @search = query['name'] || ""
    @call = "/api/beta2/service.svc/json/"
    generate_objects
  end

  def generate_objects
    url = HTTParty.get("http://services.wine.com#{@call}catalog?search=#{@search}&filter=price(#{@min}|#{@max})&apikey=#{ENV['WINE_API_KEY']}",
      :headers => { 'ContentType' => 'application/json' } )
    response = JSON.parse(url.body)
    wines = response["Products"]["List"]
    wines.each do |wine|
      @wines << Wine.find_or_create_by(name: wine["Name"], url: wine["Url"], type: wine["Type"], description: wine["Description"], price_max: wine["PriceMax"], price_min: wine["PriceMin"], price_retail: wine["PriceRetail"], api_id: wine["Id"] )
    end
  end

  def objs
    @wines
  end

  # def

end
