Rails.application.routes.draw do
  root to: "application#index"
  resources :customers
  resources :cakes

end
