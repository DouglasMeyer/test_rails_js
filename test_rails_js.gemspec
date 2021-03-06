$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "test_rails_js/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "test_rails_js"
  s.version     = TestRailsJs::VERSION
  s.authors     = ["Douglas Meyer"]
  s.email       = ["Douglas.Meyer@Centro.net"]
  s.homepage    = "https://github.com/DouglasMeyer/test_rails_js"
  s.summary     = "Test your rails JS in-browser."
  s.description = "Test your rails JS in-browser."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.1.0"

  s.add_development_dependency "rake", "~> 0.9.2"
  s.add_development_dependency "sqlite3"
end
