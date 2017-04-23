Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => 'registration' }
  # match 'dashboard' => 'home#dashboard'
  match 'home/dashboard', via: [:get,:post]
  root :to =>'home#index'
  resources :users
  resources :characters
  resources :class_types
end
