Rails.application.routes.draw do
Rails.application.routes.draw do
  #static routes
  root 'landing#home'
  get 'landing/about'
  get 'landing/contact'
  get 'landing/help'
  
  #user routes
  #resources :users

endend
