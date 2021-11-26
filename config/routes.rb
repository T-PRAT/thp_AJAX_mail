Rails.application.routes.draw do
  root to: 'email#index'
  resources :email
end
