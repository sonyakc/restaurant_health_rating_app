class RestaurantsController < ApplicationController

  def index
  end

  def show

  end

  def search_by_rating
    @rating = params[:rating]
    @restaurant_search_result = RestaurantRating.restaurant_by_rating params[:rating]
  end

  def search_by_name
    @rating = params[:name]
    @restaurant_search_result = RestaurantRating.restaurant_details params[:name]
  end
end
