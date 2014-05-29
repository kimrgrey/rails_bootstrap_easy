$:.push File.expand_path("../lib", __FILE__)

require "rails_bootstrap_easy/version"

Gem::Specification.new do |s|
  s.name        = "rails_bootstrap_easy"
  s.version     = RailsBootstrapEasy::VERSION
  s.authors     = ["Sergey Tsvetkov"]
  s.email       = ["sergey.a.tsvetkov@gmail.com"]
  s.homepage    = "http://bootstrap-easy.org"
  s.summary     = "Set of helpers that simplify a work with Bootstrap for RoR developers."
  s.description = "Set of helpers that simplify a work with Bootstrap for RoR developers."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "spork"
  s.add_development_dependency "sqlite3"
end
