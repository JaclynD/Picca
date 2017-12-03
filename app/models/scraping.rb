class Scraping

def self.get_data

require 'net/http'
require 'uri'
require 'rexml/document'

url = URI.parse(URI.escape("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=db480c87c34da841&middle_area=Y030&count=10&start=1"))
res = Net::HTTP.start(url.host, url.port){|http|
    http.get(url.path + "?" + url.query);
}

doc = REXML::Document.new(res.body)

doc.elements.each('results/shop/') do |i|
  name = i.elements['name'].text if i.elements['name']
  address = i.elements['address'].text if i.elements['address']
  access = i.elements['access'].text if i.elements['access']
  mobile_access = i.elements['mobile_access'].text if i.elements['mobile_access']
  logo_image = i.elements['logo_image'].text if i.elements['logo_image']
  station_name = i.elements['station_name'].text if i.elements['station_name']
  genre = i.elements['food/name'].text if i.elements['food/name']
  budget = i.elements['budget/name'].text if i.elements['budget/name']
  open = i.elements['open'].text if i.elements['open']
  seats = i.elements['capacity'].text if i.elements['capacity']

  restaurant = Restaurant.where(name: name).first_or_initialize
  restaurant.name = name
  restaurant.open = open
  restaurant.budget = budget
  restaurant.address = address
  restaurant.access = access
  restaurant.mobile_access = mobile_access
  restaurant.main_image = logo_image
  restaurant.location = station_name
  restaurant.genre = genre
  restaurant.seats = seats
  restaurant.save
end

end


end
