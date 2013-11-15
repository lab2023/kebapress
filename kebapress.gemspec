$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kebapress/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kebapress"
  s.version     = Kebapress::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Kebapress."
  s.description = "TODO: Description of Kebapress."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.1"

  s.add_development_dependency "sqlite3"
end
