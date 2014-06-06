class RestaurantsController < ApplicationController

  def index
  end

  def statistics
    a_count = RestaurantRating.count_by_rating("A")
    b_count = RestaurantRating.count_by_rating("B")
    c_count = RestaurantRating.count_by_rating("C")
    z_count = RestaurantRating.count_by_rating("Z")

    @ratings_map = { "A" => a_count, "B" => b_count, "C" => c_count, "Z" => z_count}
  end

  def display
    if !params[:rating].nil?
      @restaurants = RestaurantRating.restaurant_by_rating(params[:rating])
    elsif !params[:name].nil?
      @restaurants = RestaurantRating.restaurant_by_name(params[:name])
    end
  end

  def search_by_rating
  end

  def search_by_name
  end
end
