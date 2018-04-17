$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "k_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "k_admin"
  s.version     = KAdmin::VERSION
  s.authors     = ["Ricardo Marques"]
  s.email       = ["ricardo.ds.marques@gmail.com"]
  s.homepage    = "https://github.com/kollegorna/k-admin"
  s.summary     = "Simple admin interface for data administration."
  s.description = "Simple admin interface for data administration."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1"

  s.add_development_dependency "sqlite3"
end
