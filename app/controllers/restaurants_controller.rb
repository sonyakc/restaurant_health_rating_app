class RestaurantsController < ApplicationController

  def index
  end

  def display
    if !params[:rating].nil?
      @restaurants = RestaurantRating.restaurant_by_rating params[:rating]
    elsif !params[:name].nil?
      @restaurants = RestaurantRating.restaurant_details params[:name]
    end

    puts @restaurants.count
  end

  def search_by_rating
  end

  def search_by_name
  end
end
