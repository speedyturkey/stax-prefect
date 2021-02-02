# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stax/prefect/version'

Gem::Specification.new do |spec|
  spec.name          = 'stax-prefect'
  spec.version       = Stax::Prefect::VERSION
  spec.authors       = ['William McMonagle']
  spec.email         = ['speedyturkey@gmail.com']

  spec.summary       = %q{Control prefect flows with stax.}
  spec.description   = %q{Stax is a flexible set of ruby classes for wrangling your cloudformation stacks.}
  spec.homepage      = 'https://github.com/speedyturkey/stax-prefect'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.4'
  spec.add_development_dependency 'rake', '>= 12.3.3'

  spec.add_dependency('stax')
end
