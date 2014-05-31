class RestaurantRating
include Mongo

  @db = MongoClient.new("localhost", 27017).db("health")
  @rating_collection = @db.collection ("ratings")

  def self.restaurant_by_rating rating
    if !rating.nil?
      @restaurant_by_rating = @rating_collection.find({ currentgrade: rating}).to_a
    end
  end

  def self.restaurant_details name
    @all_restaurants = @rating_collection.find ({ dba: name }).to_a
  end
end