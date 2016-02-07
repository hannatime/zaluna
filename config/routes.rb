Rails.application.routes.draw do
  
  # Added by Koudoku.
  mount Koudoku::Engine, at: 'koudoku'
  scope module: 'koudoku' do
    get 'pricing' => 'subscriptions#index', as: 'pricing'
    
  end


  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :charges



end
