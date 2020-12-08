Rails.application.routes.draw do
  devise_for :users
  root to: 'maps#index'
  resources :records, only: [:index, :new, :create]
end