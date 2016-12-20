Rails.application.routes.draw do
  resources :locations, only: [:index, :show]

  root "locations#index"
end
