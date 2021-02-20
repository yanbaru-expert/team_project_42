Rails.application.routes.draw do
  devise_for :admin_users, path: "admin"
end
