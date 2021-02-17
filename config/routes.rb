Rails.application.routes.draw do
  root "texts#index"
  resources :texts
  resources :lines, only: [:index, :show]
end
