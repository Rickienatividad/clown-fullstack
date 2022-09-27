Rails.application.routes.draw do
  # post "/users" => "users#create"
  resources :users

  #sessions
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "logout" => "sessions#destroy"
end
