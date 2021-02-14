Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'memories/search'

  resources :memories, only: [:new, :index, :show, :create]
  resources :users, only: :show
end
