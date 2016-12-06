class NYCDeathApi
  URL = "https://data.cityofnewyork.us/resource/uvxr-2jwn.json"

  attr_reader :death_data

  def initialize
    @death_data = JSON.parse(RestClient.get(URL))
  end
end
