lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aiml/version"

Gem::Specification.new do |spec|
  spec.name          = "xaiml-ruby"
  spec.version       = AIML::VERSION
  spec.authors       = ["Koji Yamazaki"]
  spec.email         = ["kouji.yamazaki.cv@nttdocomo.com"]

  spec.summary       = "xAIML parser library for ruby."
  spec.description   = "xAIML parser library for ruby."
  spec.homepage      = "https://docs.xaiml.docomo-dialog.com/"

  spec.files         = `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) {|f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ox", "~> 2.10.0"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
