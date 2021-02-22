Rails.application.routes.draw do
  devise_for :users
  root "texts#index"
  resources :texts
  resources :lines, only: [:index, :show]
end
