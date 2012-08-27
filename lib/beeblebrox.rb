require 'beeblebrox/engine'

module Beeblebrox
  mattr_accessor :site_id
  mattr_accessor :api_endpoint
  
  def self.api_endpoint
    @@api_endpoint ||= "http://www.beeblebroxapp.com"
    return @@api_endpoint
  end
end