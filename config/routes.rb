Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "texts#index"
  resources :texts, only: [:index, :show]
  resources :lines, only: [:index, :show]
  resources :php_texts, only: [:index, :show]
  resources :movies, only: [:index]
  resources :money_movies, only: [:index]
  resources :php_movies, only: [:index]
  resources :texts do
    resource :reads, only: [:create, :destroy]
  end
end
