ActionController::Routing::Routes.draw do |map|
  map.devise_for :users, :admin

  map.resources :home, :only => :index
  map.resource :user
  map.resources :admins, :only => [:index]

  map.root :controller => :home
end
