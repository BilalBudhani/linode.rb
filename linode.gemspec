lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "linode/version"

Gem::Specification.new do |s|
  s.name = "linode"
  s.version = Linode::VERSION
  s.authors = ["Bilal Budhani"]
  s.email = ["bilal@bilalbudhani.com"]
  s.summary = "Ruby gem for Linode API."
  s.description = "Ruby gem for Linode API. Linode APIs can be found here: https://www.linode.com/docs/api/"
  s.homepage = "https://github.com/bilalbudhani/linode.rb"
  s.license = "MIT"

  s.files = `git ls-files -z`.split("\x0")
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 1.9"

  s.add_dependency "faraday", "~> 1.7"
  s.add_dependency "faraday_middleware", "~> 1.1"
end