Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  get 'welcome', to: 'welcome#index'

  get 'list', to: 'list#index'
  get 'list/pokemon/:name', to:'list#pokemon', as: 'list_pokemon'


  root "welcome#index"
end
