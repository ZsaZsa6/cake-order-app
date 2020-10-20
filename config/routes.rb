Rails.application.routes.draw do
  root to: "application#index"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create", as: "session"
  delete '/sessions', to: "sessions#destroy", as: "logout"
  
  
  resources :customers 

  resources :customers do
      resources :orders, only: [:index, :show]
  end
  resources :orders, only: [:new, :create, :edit, :update, :destroy]
  resources :cakes
  

end
