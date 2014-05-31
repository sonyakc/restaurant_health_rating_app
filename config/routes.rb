Rails.application.routes.draw do
  root 'restaurants#index'

  get 'restaurants/search_by_rating/', to: 'restaurants#search_by_rating', as: :rating_search
  get 'restaurants/search_by_name/', to: 'restaurants#search_by_name', as: :name_search

  resources :restaurants
end
