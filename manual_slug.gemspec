# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'manual_slug/version'

Gem::Specification.new do |spec|
  spec.name          = "manual_slug"
  spec.version       = ManualSlug::VERSION
  spec.authors       = ["glebtv"]
  spec.email         = ["glebtv@gmail.com"]
  spec.summary       = %q{Allows to set slug manually for friendly_id and mongoid-slug}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/rs-pro/manual_slug"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'

  spec.add_development_dependency "bundler", "~> 2.3.26"
  spec.add_development_dependency "rake", "~> 13.0.6"
  spec.add_development_dependency "friendly_id", "~> 5.4"
end
