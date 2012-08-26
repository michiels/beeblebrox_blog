Beeblebrox::Engine.routes.draw do
  match "/" => "beeblebrox_blog/blog#index"
  
  get ":id" => "beeblebrox_blog/blog#show", :as => :post
end