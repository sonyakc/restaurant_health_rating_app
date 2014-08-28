class RestaurantsController < ApplicationController

  def index
  end

  def statistics
    a_count = RestaurantRating.count_by_rating("A")
    b_count = RestaurantRating.count_by_rating("B")
    c_count = RestaurantRating.count_by_rating("C")
    z_count = RestaurantRating.count_by_rating("Z")

    @ratings_map = {"A" => a_count, "B" => b_count, "C" => c_count, "Z" => z_count}

    rating = 'A'
    m_count = RestaurantRating.count_by_borough(1, rating)
    br_count = RestaurantRating.count_by_borough(2, rating)
    brx_count = RestaurantRating.count_by_borough(3, rating)
    queens_count = RestaurantRating.count_by_borough(4, rating)
    si_count = RestaurantRating.count_by_borough(5, rating)

    @borough_rating_map = {"MANHATTAN" => m_count, "BROOKLYN" => br_count,
                           "THE BRONX" => brx_count, "STATEN ISLAND" => si_count,
                           "QUEENS" => queens_count}

  end


  def display
    if !params[:rating].nil?
      @restaurants = RestaurantRating.restaurant_by_rating(params[:rating])
    elsif !params[:name].nil?
      @restaurants = RestaurantRating.restaurant_by_name(params[:name])
    elsif zip = params[:zip].to_i
      @restaurants = RestaurantRating.restaurant_by_zip(zip)
      ratings_by_zip_grade(zip)
    end
  end

  def search_by_rating
  end

  def search_by_name
  end

  def search_by_zip
  end

  private
  def ratings_by_zip_grade(zip)
    a_count = RestaurantRating.count_by_rating_zip("A", zip)
    b_count = RestaurantRating.count_by_rating_zip("B", zip)
    c_count = RestaurantRating.count_by_rating_zip("C", zip)
    z_count = RestaurantRating.count_by_rating_zip("Z", zip)

    @ratings_zip_map = {"A" => a_count, "B" => b_count, "C" => c_count, "Z" => z_count}
  end
end
