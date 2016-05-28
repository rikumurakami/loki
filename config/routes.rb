Rails.application.routes.draw do
  resources :items
  devise_for :users
  root 'top#index'
  get  'top/new' => 'top#new'
  post  'top'      =>  'top#create'    #ツイート投稿機能
  delete  'top/:id'  => 'top#destroy'
  get   'top/:id/edit'  => 'top#edit'
  patch   'top/:id'  => 'top#update'

end