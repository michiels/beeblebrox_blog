Gem::Specification.new do |s|
  s.name = 'beeblebrox_blog'
  s.version = '0.0.0'
  s.date = '2012-08-26'
  s.summary = "Rails Engine that loads a Beeblebrox blog into your Rails app."
  s.authors = ["Michiel Sikkes"]
  s.email = 'michiel@firmhouse.com'
  
  s.files = `git ls-files`.split("\n")
  s.require_paths = ["lib", "app"]
  
  s.homepage = "http://rubygems.org/gems/beeblebrox_blog"
  
  s.add_runtime_dependency 'faraday'
  s.add_runtime_dependency 'faraday_middleware'
end