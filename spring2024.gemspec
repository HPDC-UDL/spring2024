# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "spring2024"
  spec.version       = "0.1.0"
  spec.authors       = ["Jordi Mateo"]
  spec.email         = ["jordi.mateo@udl.cat"]

  spec.summary       = "spring2024"
  spec.homepage      = "https://github.com/HPDC-UDL/spring2024"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.4"
  spec.add_development_dependency "bundler", "~> 2.6.8"
  spec.add_development_dependency "rake", "~> 13.2.1"
end
