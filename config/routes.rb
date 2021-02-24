Rails.application.routes.draw do
  devise_for :users
  root "texts#index"
  resources :texts
  resources :lines, only: [:index, :show]
  resources :php_texts, only: [:index, :show]
end
