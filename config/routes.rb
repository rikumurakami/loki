Rails.application.routes.draw do
  resources :items
  devise_for :users
  root 'top#index'
end