# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/config_examples/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-config-examples'
  spec.version       = Capistrano::ConfigExamples::VERSION
  spec.authors       = ['Balazs Kovacs']
  spec.email         = ['balazs.kovacs@jbslabs.com']
  spec.summary       = 'Capistrano tasks for uploading example files containing sensitive data to your shared folder.'
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency "capistrano", ">= 3.1"
  spec.add_dependency "sshkit", ">= 1.2.0"

  spec.add_development_dependency "rake"
end
