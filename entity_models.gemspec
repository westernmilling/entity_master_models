# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'entity_models/version'

Gem::Specification.new do |spec|
  spec.name = 'entity_models'
  spec.version = EntityModels::VERSION
  spec.authors = ['Joseph Bridgwater-Rowe']
  spec.email = ['joe@westernmilling.com']
  spec.summary = 'Entity Master models'
  spec.description = 'Entity Master models'
  spec.homepage = ''
  spec.license = 'Apache 2.0'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord'
  spec.add_dependency 'paranoia'
  spec.add_dependency 'uuid'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'factory_girl'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'shoulda-matchers'
end
