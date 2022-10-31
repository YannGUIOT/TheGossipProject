Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")
  # root "articles#index"

  # resources :gossips do 
  #   resources :comments
  #   resources :likes
  # end
  # resources :cities
  # resources :users
  # resources :sessions

  root 'accueil#index'
  get '/accueil', to: 'accueil#index'

  get '/contact', to: 'contact#contact'
  get '/equipe', to: 'team#team'

  get '/welcome/:id', to: 'welcome#welcome'
  get '/welcome', to: 'welcome#welcome'

  get '/user/:id', to: 'user#user'
  get '/gossip/:id', to: 'gossip#gossip'
  



end
