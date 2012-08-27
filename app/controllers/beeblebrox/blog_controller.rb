require 'faraday'
require 'faraday_middleware'

module Beeblebrox
  class BlogController < ApplicationController
    def index
      conn = Faraday.new(:url => Beeblebrox.api_endpoint) do |faraday|
        faraday.response :json, :content_type => /\bjson$/
        faraday.adapter Faraday.default_adapter
      end
    
      response = conn.get "/#{Beeblebrox.site_id}/api/posts.json"
      @posts = response.body
      
      if request.xhr?
        render :layout => false
      end
      
    end
    
    def show
      conn = Faraday.new(:url => Beeblebrox.api_endpoint) do |faraday|
        faraday.response :json, :content_type => /\bjson$/
        faraday.adapter Faraday.default_adapter
      end
      
      response = conn.get "/#{Beeblebrox.site_id}/api/posts/#{params[:id]}.json"
      @post = response.body
      
      if request.xhr?
        render :layout => false
      end
    end
  end
end