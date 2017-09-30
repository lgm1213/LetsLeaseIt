Rails.application.routes.draw do

  
  #static routes
  root 'landing#home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/help'
  
  # user routes
  resources :users
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/users/id/edit' => 'users#edit'

  #Session Routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

end
