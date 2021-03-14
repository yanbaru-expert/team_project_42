Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "texts#index"
  resources :texts, only: [:index, :show]
  resources :lines, only: [:index, :show]
  resources :movies, only: [:index]
  resources :texts do
    resource :reads, only: [:create, :destroy]
  end
  resources :movies do
    resource :watches, only: [:create, :destroy]
  end
end
