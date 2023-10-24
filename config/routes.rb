Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, path: 'users'
  devise_for :admins, path: 'admins', controllers: { registrations: 'admins/registrations' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :articles
  resources :articles do
    resources :comments, only: [:new, :create]
  end

  resources :debates 
  resources :debates do
    resources :debate_responses, only: [:create, :edit, :update, :destroy]
  end

  get :en_360, controller: :articles
  get :actus, controller: :articles
  
  resources :categories

  get :legal, controller: :legal
  namespace :legal do
    get :cgu
    get :rgpd
  end

  

  root "home#index"
  
end
