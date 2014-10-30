# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resque/http_stats/version'

Gem::Specification.new do |spec|
  spec.name          = "resque-http_stats"
  spec.version       = Resque::HttpStats::VERSION
  spec.authors       = ["skv"]
  spec.email         = ["skv-headless@yandex.ru"]
  spec.summary       = "Add method to show resque statistic."
  spec.description   = "Very simple resque statistic."
  spec.homepage      = "https://github.com/skv-headless/resque-http_stats"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
