Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  root 'restaurants#index'

  get 'restaurants/search_by_rating/', to: 'restaurants#search_by_rating', as: :rating_search
  get 'restaurants/search_by_name/', to: 'restaurants#search_by_name', as: :name_search

  resources :restaurants
end
