Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  
  #static routes
  root 'landing#home'
  get 'landing/home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/help'
  get 'landing/splash'

  # user routes
  resources :users do
    resources :buildings do
      resources :appointments do
      end
    end
  end

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/users/id/edit' => 'users#edit'

  #Session Routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  #building and associated routes
  resources :buildings do
    resources :listings do
      resources :appointments do
        resources :rented_units
      end
    end
  end
 

  #Analytics Routes
  resources :analytics, only: [:index]
  #route for modal that opens
  get 'buildings/:id/modal', to: 'buildings#open_building_modal'
  
  get 'listing_image/index'
  get 'listing_image/new'
  get 'listing_image/create'

  resources :companies
end
