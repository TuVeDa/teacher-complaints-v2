Rails.application.routes.draw do
  resources :users
  resources :issues
  root 'application#index'
  get '/confirmation' => "application#confirmation", as: "confirmation"
  get '/login' => "application#login", as: "login"
  get '/logout' => "application#logout", as: "logout"
  post '/authenticate' => "application#authenticate", as: "authenticate"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
