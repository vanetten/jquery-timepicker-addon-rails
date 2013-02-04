# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery-timepicker-addon-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["William Van Etten"]
  gem.email         = ["bill@bioteam.net"]
  gem.description   = "This gem provides jquery-ui-timepicker-addon.js and jquery-ui-timepicker-addon.css for your Rails 3 application."
  gem.summary       = "Use jquery-ui-timepicker-addon with Rails 3"
  gem.homepage      = "http://rubygems.org/gems/jquery-timepicker-addon-rails"

  gem.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE", "README.md"]
  gem.add_dependency "railties", "~> 3.1"
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jquery-timepicker-addon-rails"
  gem.require_paths = ["lib"]
  gem.version       = Jquery::Timepicker::Addon::Rails::VERSION
end
