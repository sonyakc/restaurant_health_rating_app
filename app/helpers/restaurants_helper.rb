module RestaurantsHelper
  include Yelp::V1::Review::Request

  @@client = Yelp::Client.new

  def self.lookup_borough(key)
    @@borough_map[key]
  end

  private
    @@borough_map =
        {
         1 => "MANHATTAN",
         2 => "THE BRONX",
         3 => "BROOKLYN",
         4 => "QUEENS",
         5 => "STATEN ISLAND"
        }
end
