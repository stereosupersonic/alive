Alive::Application.routes.draw do
  resources :clients

  resources :names

  root :to => "home#index"         
  match 'secure' => 'home#secure', :as => :secure
end
