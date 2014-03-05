# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "command-dispatcher"
  spec.version       = File.read('VERSION')
  spec.authors       = ["Pat Laplante"]
  spec.email         = ["pat@covenofchaos.com"]
  spec.description   = %q{Help with dispatching specific functionality to other ruby scripts.  mybinscript init would call 'mybinscript-init'}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'version'
  spec.add_development_dependency 'rspec'
  
end
