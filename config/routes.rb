Rails.application.routes.draw do
  devise_for :users, path: 'users'
  devise_for :admins, path: 'admins'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")
  # root "articles#index"
end
