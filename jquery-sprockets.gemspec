# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery-sprockets/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["John Bintz"]
  gem.email         = ["john@coswellproductions.com"]
  gem.description   = %q{Just jQuery for Sprockets. No Rails bits, no strange dependencies.}
  gem.summary       = %q{Just jQuery for Sprockets. No Rails bits, no strange dependencies.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jquery-sprockets"
  gem.require_paths = ["lib"]
  gem.version       = Jquery::Sprockets::VERSION

  gem.add_development_dependency 'httparty'
end
