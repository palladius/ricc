require_relative 'lib/ricc/version'

Gem::Specification.new do |spec|
  spec.name          = "ricc"
  spec.version       = Ricc::VERSION
  spec.authors       = ["Riccardo Carlesso"]
  spec.email         = ["riccardo.carlesso+gemme@gmail.com"]

  spec.summary       = 'Simplistic sample gem in 2020.'
  spec.description   = 'I have a few gems from the past, wanted to start a new one in the era of Ruby2 and Rails6'
  spec.homepage      = "http://www.palladius.it/"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/palladius/ricc"
  spec.metadata["changelog_uri"] = "https://github.com/palladius/ricc/CHANGELOG.md" # "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
