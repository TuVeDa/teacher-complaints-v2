Rails.application.routes.draw do
  resources :issues, :login
  root 'application#index'
  get '/confirmation' => "application#confirmation", as: "confirmation"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
