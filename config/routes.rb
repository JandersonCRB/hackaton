Rails.application.routes.draw do
  resources :fixes, except: [:edit, :update] do
  	resource :reviews, only: [:create, :new, :destroy]
  	member do
  		put 'attend'
  	end
  end
  get '/profile/:id', to: 'users#show', as: 'profile'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get '/problems', to: 'pages#problems'
  get '/help', to: 'pages#help'
end
