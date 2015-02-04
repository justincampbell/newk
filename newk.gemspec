# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newk/version'

Gem::Specification.new do |spec|
  spec.name          = "newk"
  spec.version       = Newk::VERSION
  spec.authors       = ["Justin Campbell"]
  spec.email         = ["justin@justincampbell.me"]
  spec.summary       = "Remove the need for `.new` in Ruby"
  spec.description   = "Remove the need for `.new` in Ruby. You should probably never use this."
  spec.homepage      = "https://github.com/justincampbell/newk"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
