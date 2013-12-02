$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kebapress/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kebapress"
  s.version     = Kebapress::VERSION
  s.authors     = %w["lab2023"]
  s.email       = %w["info@lab2023.com"]
  s.homepage    = "https://github.com/kebab-project/kebapress"
  s.summary     = "Kebapress is a blog engine for Cybele initialized Rails applications.
  s.description = "TODO: Description of Kebapress."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "4.0.0"
  s.add_dependency "haml", "~> 4.0.2"
  s.add_dependency "haml-rails"

  s.add_development_dependency "sqlite3"
end
