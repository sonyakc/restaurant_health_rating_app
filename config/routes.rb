Rails.application.routes.draw do
  root 'restaurants#index'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'restaurants/yelp_rating/:id', to: 'yelp#restaurant_yelp_details', as: :yelp_details

  get 'restaurants/search_by_rating', to: 'restaurants#search_by_rating', as: :rating_search

  get 'restaurants/search_by_name', to: 'restaurants#search_by_name', as: :name_search

  get 'restaurants/search_by_zip', to: 'restaurants#search_by_zip', as: :zip_search

  get 'restaurants/statistics', to: 'restaurants#statistics', as: :statistics

  get 'restaurants/display'

  get 'restaurants/details', to: 'restaurants#details', as: :details

  resources :restaurants

  resources :yelp
end
