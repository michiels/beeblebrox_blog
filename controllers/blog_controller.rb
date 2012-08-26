module BeeblebroxBlog
  
  class BlogController < ApplicationController
    def index
      render :text => "yay"
    end
  end
  
end