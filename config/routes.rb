Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, path: 'users'
  devise_for :admins, path: 'admins'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :articles do
    resources :commentaries
  end

  get :en_360, controller: :articles
  get :actus, controller: :articles

  resources :debates

  get :legal, controller: :legal
  namespace :legal do
    get :cgu
    get :rgpd
  end

  root "home#index"
end
