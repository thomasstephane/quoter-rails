QuoterRails::Application.routes.draw do
  resources :users
  
  root :to => 'users#index'
  post 'login' => 'users#login', as: :session_init
  get 'logout' => 'users#logout'

end
