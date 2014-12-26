Rails.application.routes.draw do

  root 'static_pages#home'
  get 'signup'  => 'users#new'
  resources :users

  get 'password_resets/new'

  get 'password_resets/edit'


    # sessions
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  get '/company/:name', to: 'companies#show', as: :show_company

  resources :companies, only: [:new, :create, :index]

end
