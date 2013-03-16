FindOtter::Application.routes.draw do
  resources :maps, :only => :index
  resources :otters, :only => :index
  root :to => 'home#index'

end
