Rails.application.routes.draw do
  devise_for :users
  resources :locations, only: [:index, :show]
  resources :search, only: [:index]
  resources :bookmarks, only: [:create, :destroy, :index]
  resources :bookmark_lists, only: [:create, :destroy]
  root "locations#index"
end
