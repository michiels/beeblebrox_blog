require 'faraday'
require 'faraday_middleware'

class BlogController < ApplicationController
  def index
    conn = Faraday.new(:url => 'http://www.beeblebrox.dev') do |faraday|
      faraday.response :json, :content_type => /\bjson$/
      faraday.adapter Faraday.default_adapter
    end
    
    response = conn.get "/811047914/api/posts.json"
    @posts = response.body
  end
end