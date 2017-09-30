Rails.application.routes.draw do
  resources :users
  #static routes
  root 'landing#home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/help'
  
  #user routes
  #resources :users

end
