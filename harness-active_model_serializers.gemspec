# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'harness/active_model_serializers/version'

Gem::Specification.new do |spec|
  spec.name          = "harness-active_model_serializers"
  spec.version       = Harness::ActiveModelSerializers::VERSION
  spec.authors       = ["ahawkins"]
  spec.email         = ["adam@hawkins.io"]
  spec.description   = %q{Log all ActiveModel::Serializer performance metrics with Harness}
  spec.summary       = %q{}
  spec.homepage      = "http://github.com/ahawkins/harness-active_model_serializers"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "harness"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
