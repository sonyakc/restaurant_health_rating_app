class RestaurantRating
include Mongo

  begin
    @db = MongoClient.new("localhost", 27017).db("health")
    @rating_collection = @db.collection ("ratings")
  rescue Mongo::ConnectionFailure => e
    puts e.message
  end

  def self.restaurant_by_rating(rating)
    if !rating.nil?
      begin
        @restaurants = @rating_collection.find({ currentgrade: rating.upcase })
      rescue
      end
    end
  end

  def self.restaurant_by_name(name)
    if !name.nil?
      begin
        @restaurants = @rating_collection.find({ dba: name.upcase })
      rescue
      end
    end
  end

  def self.count_by_rating(rating)
    if !rating.nil?
      begin
        @count = @rating_collection.find({currentgrade: rating }).count
      end
    end
  end
end