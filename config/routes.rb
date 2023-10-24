Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :vehicles
  resources :rides
  #api for searching rides based on filters
  get "rides/:start_city/:end_city", to: "rides#search"
end
