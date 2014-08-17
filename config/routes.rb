Intheeruv::Application.routes.draw do
  #root :to => 'home#index'

  resources :home, :only => [:index]
  resources :result, :only => [:index]


  root :to => "home#index"

end
