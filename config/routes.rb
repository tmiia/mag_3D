Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, path: 'users'
  devise_for :admins, path: 'admins', controllers: { registrations: 'admins/registrations' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :articles do 
    resources :commentaries
  end

  resources :debates

  get :legal, controller: :legal
  namespace :legal do
    get :cgu
    get :rgpd
  end

  

  root "home#index"
  
end
