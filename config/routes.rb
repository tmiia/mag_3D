Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, path: 'users'
  devise_for :admins, path: 'admins'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :articles
  resources :debates

  root "home#index"
end
