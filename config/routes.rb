Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "texts#index"
  resources :texts, only: [:index]
  resources :lines, only: [:index, :show]
  resources :php_texts, only: [:index, :show]
end
