Rails.application.routes.draw do

  devise_for :users
  #get 'home/index'
  get 'home/hosting'
  get 'home/vpsvds'
  get 'home/dedicated'
  get 'home/domens'
  root 'home#index'
  resources :articles
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
