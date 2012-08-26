module BeeblebroxBlog
  class BlogController < ApplicationController
    def index
      render :text => blog_root_path
    end
  end
end