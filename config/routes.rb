Rails.application.routes.draw do
  resources :microposts
  resources :words
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "microposts#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
