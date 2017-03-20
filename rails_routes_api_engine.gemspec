$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_routes_api_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_routes_api_engine"
  s.version     = RailsRoutesApiEngine::VERSION
  s.authors     = ["zcotter@forwardfinancing.com"]
  s.email       = ["jaffecotter.z@gmail.com"]
  s.homepage    = "https://github.com/ForwardFinancing/rails_routes_api_engine"
  s.summary     = "Exposes your Rails app's routes via an API endpoint"
  s.description = "Exposes your Rails app's routes via an API endpoint"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 3"

  s.add_development_dependency "sqlite3"
end
