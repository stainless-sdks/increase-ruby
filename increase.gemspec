# frozen_string_literal: true

require_relative "lib/increase/version"

Gem::Specification.new do |s|
  s.name = "increase"
  s.version = Increase::VERSION
  s.summary = "Ruby library to access the Increase API"
  s.authors = ["Increase"]
  s.email = "dev-feedback@increase.com"
  s.files = Dir["lib/**/*.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://rubydoc.info/github/increase/increase-ruby"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/increase/increase-ruby"
  s.metadata["rubygems_mfa_required"] = "true"
end
