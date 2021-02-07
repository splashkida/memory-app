Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :memories
  resources :users, only: :show
end
