Rails.application.routes.draw do
  resources :users
  resources :producers
  resources :styles
  resources :ratings
  resources :regions
  resources :grapes
  resources :countries
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/auth/google_oauth2/callback', to: 'sessions#create'

  root 'wines#index'
end
