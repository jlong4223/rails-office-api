Rails.application.routes.draw do
  root 'welcome#index'
  
  # setting the users/login about the users resource so it doesnt mess with the id param
  get "/users/login", to: 'users#login'

  # post route for signing jwt
  post "/users/login", to: 'users#authenticate_user'

  resources :users
  resources :offices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :notices
end
