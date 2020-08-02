require_relative 'lib/version.rb'

Gem::Specification.new do |spec|
  spec.name          = "Ruby_Project"
  spec.version       = RubyProject::VERSION
  spec.authors       = ["Alicia Reeves"]
  spec.email         = ["reevesalic@gmail.com"]

  spec.summary       = %q{Scrape photograph details from website}
  spec.description   = %q{Scrape photograph details from website}
  spec.homepage      = "https://www.amc.com/shows/breaking-bad"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["https://www.amc.com/shows/breaking-bad"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://www.pexels.com/"
  spec.metadata["changelog_uri"] = "https://www.pexels.com/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
