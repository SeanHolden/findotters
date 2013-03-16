FindOtter::Application.routes.draw do

  resources :otters, :only => :index
  root :to => 'home#index'

end
