Rails.application.routes.draw do
  devise_for :admin_users, path: "admin"
  devise_for :users
  
  root "texts#index"
  resources :texts
end
