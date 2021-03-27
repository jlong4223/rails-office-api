Rails.application.routes.draw do
  root 'welcome#index'
  
  # post route for signing jwt
  post "/users/login", to: 'authentication#create'
  
  # test route for checking for jwt with curl
  get '/home', to: 'home#index'

  resources :users
  resources :offices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :notices
end
