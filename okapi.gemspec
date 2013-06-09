# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "okapi/version"

Gem::Specification.new do |s|
  s.name        = "okapi"
  s.version     = Okapi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Albert Bellonch"]
  s.email       = ["albert@itnig.net"]
  s.homepage    = "http://github.com/albertbellonch/okapi"
  s.summary     = %q{ A simple utility that hides instance variables inside Ruby objects }

  s.rubyforge_project = "okapi"

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
end
