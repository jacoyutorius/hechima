$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hechima/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hechima"
  s.version     = Hechima::VERSION
  s.authors     = ["Yuto Ogi"]
  s.email       = ["jacoyutorius@gmail.com"]
  s.homepage    = "http://jacoyutorius.com"
  s.summary     = "Hechima enables your application to show View without Controller."
  s.description = "Hechima enables your application to show View without Controller."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
end
