# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple-mdb/version'

Gem::Specification.new do |spec|
  spec.name          = "simple-mdb"
  spec.version       = SimpleMdb::VERSION
  spec.authors       = ["Alexander Logunov"]
  spec.email         = ["unlovedru@gmail.com"]
  spec.description   = 'Wrapper around MDB Tools, allowing POSIX platforms to read MS Access (.mdb) files'
  spec.summary       = 'Wrapper around MDB Tools, allowing POSIX platforms to read MS Access (.mdb) files'
  spec.homepage      = "https://github.com/unloved/simple-mdb"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'activesupport'
end
