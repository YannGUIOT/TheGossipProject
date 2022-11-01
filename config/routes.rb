Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")


  resources :gossip
  resources :users
 

  root 'gossip#index'
  #get '/accueil', to: 'accueil#index'

  get '/contact', to: 'contact#contact'
  get '/equipe', to: 'team#team'

  get '/welcome/:id', to: 'welcome#welcome'
  get '/welcome', to: 'welcome#welcome'

  # get '/user/:id', to: 'user#user'
  # get '/gossip/:id', to: 'gossip#gossip'

  # get '/new', to: 'gossip#new'
  



end
