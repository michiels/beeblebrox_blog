BeeblebroxBlog::Engine.routes.draw do
  match "/" => "beeblebrox_blog/blog#index"
end