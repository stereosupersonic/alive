Alive::Application.routes.draw do
  resources :clients

  resources :names

  root :to => "home#index"         
  match 'about' => 'home#about', :as => :about
  
  scope('/api/v1', :defaults => {:format => 'json'}) do
    # API Version 1
    match 'heartbeat' => 'heartbeats#create', :as => :heartbeat
  end
end
