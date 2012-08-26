BeeblebroxBlog::Engine.routes.draw do
  match "/" => "posts#index"
  match "/blog" => "posts#index"
end