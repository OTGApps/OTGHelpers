# -*- encoding: utf-8 -*-
VERSION = "0.0.2"

Gem::Specification.new do |spec|
  spec.name          = "OTGHelpers"
  spec.version       = VERSION
  spec.authors       = ["Mark Rickert"]
  spec.email         = ["mjar81@gmail.com"]
  spec.description   = "A set of class extenstions I commonly use in my applications for RubyMotion."
  spec.summary       = "A set of class extenstions I commonly use in my applications for RubyMotion."
  spec.homepage      = ""
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
