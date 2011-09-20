# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sprockets/rails2/version"

Gem::Specification.new do |s|
  s.name        = "sprockets-rails2"
  s.version     = Sprockets::Rails2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew Willis"]
  s.email       = ["awillis@customink.com"]
  s.homepage    = ""
  s.summary     = %q{Provides asset pipeline functionality to Rails 2.3 apps}
  s.description = %q{The sprockets-rails2 gem allows Rails 2.3 apps to use the
                     same asset pipeline functionality introduced in Rails 3.1.
                     It does this by integrating the Sprockets gem into a Rails
                     2.3 app}

  s.rubyforge_project = "sprockets-rails2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency("sprockets", "2.0.0")
end
