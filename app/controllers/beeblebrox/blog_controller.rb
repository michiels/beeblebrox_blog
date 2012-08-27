require 'faraday'
require 'faraday_middleware'

module Beeblebrox
  class BlogController < ApplicationController
    def index
      conn = Faraday.new(:url => 'http://www.beeblebroxapp.com') do |faraday|
        faraday.response :json, :content_type => /\bjson$/
        faraday.adapter Faraday.default_adapter
      end
    
      response = conn.get "/#{Beeblebrox.site_id}/api/posts.json"
      @posts = response.body
    end
  end
end