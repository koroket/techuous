Rails.application.routes.draw do

  root 'static_pages#home'
  get 'signup'  => 'users#new'
  resources :users

  get 'password_resets/new'

  get 'password_resets/edit'


  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]


end
