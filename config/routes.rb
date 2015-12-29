Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
end
