# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/send/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-send"
  spec.version       = Capistrano::Send::VERSION
  spec.authors       = ["Guillaume Dott"]
  spec.email         = ["guillaume+github@dott.fr"]
  spec.summary       = %q{Send notifications after a deploy with Capistrano}
  spec.description   = %q{This gem provides some notifiers to send notifications after a deploy with Capistrano.}
  spec.homepage      = "https://github.com/gdott9/capistrano-send"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "libnotify", "~> 0.9.0"
  spec.add_development_dependency "mail", "~> 2.6"
end
