Rails.application.routes.draw do
  root "sessions#new"
  # post "/users" => "users#create"
  resources :users

  #sessions
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "logout" => "sessions#destroy"

  #clowns
  resources :clowns
end
