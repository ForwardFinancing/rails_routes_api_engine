$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_routes_api_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_routes_api_engine"
  s.version     = RailsRoutesApiEngine::VERSION
  s.authors     = ["zcotter@forwardfinancing.com"]
  s.email       = ["jaffecotter.z@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsRoutesApiEngine."
  s.description = "TODO: Description of RailsRoutesApiEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "sqlite3"
end
