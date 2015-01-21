$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_job/locks/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activejob-locks"
  s.version     = Activejob::Locks::VERSION
  s.authors     = ["Eric Krause"]
  s.email       = ["eric.krause@gmail.com"]
  s.homepage    = "https://github.com/eric.krause/activejob-locks"
  s.description = "Activejob Locks is an ActiveJob addon that will lock workers based on queue or work payload"
  s.summary     = s.description
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'activejob'
  s.add_dependency 'redis'
  s.add_dependency 'redlock'
end