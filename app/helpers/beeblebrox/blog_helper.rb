module Beeblebrox
  
  module BlogHelper
    
    def cache_key_for_post(post)
      "#{post['id']}-#{post['updated_at'].to_i}"
    end
      
  end
  
end