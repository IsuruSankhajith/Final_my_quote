Rails.application.routes.draw do
  #get 'search/index'
  get 'search', to: 'search#index'
  resources :quotecategories
  resources :categories
  resources :quotes
  resources :philosophers
  resources :users
  get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/admin', to: 'home#aindex'
  get '/userhome', to: 'home#uindex'
  get '/your-uquotes', to: 'home#uquotes'

  # Defines the root path route ("/")
  # root "articles#index"
end
