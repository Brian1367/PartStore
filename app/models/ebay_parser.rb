require 'httparty'
require 'pry'
class EbayParser
  attr_reader :data

  def initialize
    @data = []
  end


  def search(query)

    response = HTTParty.get("https://api.meetup.com/2/groups?key=#{ENV["MEETUP_KEY"]}&zip=02111&radius=5&topic=#{query}")


    meetup_data = response["results"][0]
    new_hash = {
      name: meetup_data["name"],
      link: meetup_data["link"],
      city: meetup_data["city"],
      state: meetup_data["state"],
      description: meetup_data["description"],
      lon: meetup_data["lon"],
      lat: meetup_data["lat"]
    }
    @data << new_hash
  end



end
