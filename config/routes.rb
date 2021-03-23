Rails.application.routes.draw do
  # get 'front/greeting'
  root "front#greeting"
  get 'front/new', to: 'front#new'
  
  # get '/new_property', to: 'properties#createBroker'
  devise_for :users
  # get '/new_broker', to: 'brokers#createBroker'
  # resources :users
  # get "/broker/:id", to: "properties#broker"
  resources :properties do
    get "/" , to: "front#details"
  end

  
  resources :brokers
  resources :users do
    resources :properties
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

