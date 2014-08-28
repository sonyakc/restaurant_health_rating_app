class YelpController < ApplicationController
  include Yelp::V2::Search::Request

  @@client = Yelp::Client.new

  def restaurant_yelp_details
    params
    request = Location.new(:term => params["id"], :zipcode => params["zip"],
                           :state => "New York", :radius => "1", :city => "NY", limit: 1)
    response = @@client.search(request)
    @business_details = response["businesses"][0]
  end
end