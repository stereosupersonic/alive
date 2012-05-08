Alive::Application.routes.draw do
  resources :clients

  resources :names

  root :to => "home#index"         
 
  #match 'heartbeat' => 'heartbeats#create', :as => :heartbeat  
  
  scope('/api/v1', :defaults => {:format => 'json'}) do
      # API Version 1
    #  scope(:module => 'v1') do
        
       # controller :heartbeats do
           match 'heartbeat' => 'heartbeats#create', :as => :heartbeat
          
       # end
     # end
    end
end
