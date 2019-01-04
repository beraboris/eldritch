# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eldritch/version'

Gem::Specification.new do |spec|
  spec.name          = 'eldritch'
  spec.version       = Eldritch::VERSION
  spec.authors       = ['Boris Bera', 'François Genois']
  spec.email         = %w(bera.boris@gmail.com frankgenerated@gmail.com)
  spec.summary       = 'DSL that adds concurrent programming concepts to ' \
                       'make your life easier.'
  spec.description   = 'Adds support for async methods and async blocks. ' \
                       'Adds a together block that allows async ' \
                       'methods/blocks to be controlled as a group.'
  spec.homepage      = 'https://github.com/dotboris/eldritch'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'reentrant_mutex', '~> 1.1.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 11.0'
  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'yard', '~> 0.9.11'
end
