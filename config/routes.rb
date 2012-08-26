Beeblebrox::Engine.routes.draw do
  root :to => "blog#index"
  
  resources :blogs, :path => '', :controller => "blog"
end