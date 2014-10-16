# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "bundler-foo"
  spec.version       = '0.0.1'
  spec.authors       = ["Your Name"]
  spec.email         = ["your@email.com"]
  spec.summary       = %q{provides rake foo_release}
  spec.description   = %q{provides rake foo_release}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "bundler-geminabox"

  spec.add_development_dependency "rake"
end
