Rails.application.routes.draw do
  devise_for :users
  resources :locations, only: [:index, :show]
  resources :search, only: [:index]
  root "locations#index"
end
