# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/path/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-path"
  spec.version       = Omniauth::Path::VERSION
  spec.authors       = ["Kento Moriwaki"]
  spec.email         = ["kento@wantedly.com"]

  spec.summary       = %q{A Path OAuth2 strategy for OmniAuth 1.x}
  spec.description   = %q{A Path OAuth2 strategy for OmniAuth 1.x}
  spec.homepage      = "https://github.com/KentoMoriwaki/omniauth-path"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth', '>=1.1.1'
  spec.add_runtime_dependency 'omniauth-oauth2', '>= 1.1.1'

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
