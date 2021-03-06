# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swagger/diff/version'

Gem::Specification.new do |spec|
  spec.name          = 'swagger-diff'
  spec.version       = Swagger::Diff::VERSION
  spec.authors       = ['Jeff Cousens']
  spec.email         = ['opensource@civisanalytics.com']

  spec.summary       = 'Utility for comparing two OAI (fka Swagger) specifications.'
  spec.description   = 'Swagger::Diff is a utility for comparing two ' \
                       'different Open API Initiative (OAI) specifications ' \
                       '(fka Swagger specifications). ' \
                       'It is intended to determine whether a newer API ' \
                       'specification is backwards-compatible with an ' \
                       'older API specification. ' \
                       'It provides both an RSpec matcher and helper ' \
                       'functions that can be used directly.'
  spec.homepage      = 'https://github.com/civisanalytics/swagger-diff'
  spec.license       = 'BSD 3-Clause'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.0'

  spec.add_dependency 'json-schema', '~> 2.6'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 11.1'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'pry', '~> 0.10.1'
  spec.add_development_dependency 'rubocop', '~> 0.40.0'
  spec.add_development_dependency 'vcr', '~> 3.0'
  spec.add_development_dependency 'webmock', '~> 2.0'
end
