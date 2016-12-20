Rails.application.routes.draw do
  resources :locations, only: [:index, :show]
  resources :search, only: [:index]
  root "locations#index"
end
