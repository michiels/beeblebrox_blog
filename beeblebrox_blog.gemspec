Gem::Specification.new do |s|
  s.name = 'beeblebrox_blog'
  s.version = '0.0.0'
  s.date = '2012-08-26'
  s.summary = "Rails Engine that loads a Beeblebrox blog into your Rails app."
  s.authors = ["Michiel Sikkes"]
  s.email = 'michiel@firmhouse.com'
  
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.require_paths = ["lib", "app"]
  
  s.homepage = "http://rubygems.org/gems/beeblebrox_blog"
  
  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency 'faraday'
  s.add_dependency 'faraday_middleware'
end