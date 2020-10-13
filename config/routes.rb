Rails.application.routes.draw do
  root to: "application#index"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create", as: "session"
  delete '/sessions', to: "sessions#destroy", as: "logout"
  resources :orders, only: [:new, :show, :create, :edit, :update, :destroy]
  resources :customers
  resources :cakes, only: [:new, :show, :create, :edit, :update]
  

end
