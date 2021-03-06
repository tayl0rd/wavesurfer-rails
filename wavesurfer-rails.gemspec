# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wavesurfer/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "wavesurfer-rails"
  spec.version       = Wavesurfer::Rails::VERSION
  spec.authors       = ["Taylor Daugherty"]
  spec.email         = ["mdaugherty6@gmail.com"]

  spec.summary       = %q{http://wavesurfer-js.org/}
  spec.description   = %q{Wavesurfer.js for the rails asset pipeline. http://wavesurfer-js.org/}
  spec.homepage      = "http://gdclifford.info/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
