# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'McQuery/version'

Gem::Specification.new do |spec|
  spec.name          = "McQuery"
  spec.version       = McQuery::VERSION
  spec.authors       = ["Benjamin James Harrison-Sims"]
  spec.email         = ["tehrainbowguy@gmail.com"]
  spec.description   = "Server ping for Minecraft. A work in progress."
  spec.summary       = "Server ping for Minecraft."
  spec.homepage      = "http://github.com/TehRainbowGuy/McQuery"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
