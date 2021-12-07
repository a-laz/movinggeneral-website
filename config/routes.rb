Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'quotes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'welcome#index'
  
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

  get '/contact', to: 'contact#index'
  get '/services', to: 'services#index'

  get '/quote', to: 'quotes#index'
  post '/quote', to: 'quotes#create'

  get '/submitted', to: 'submits#index'

end
