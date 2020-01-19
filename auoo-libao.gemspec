require_relative 'lib/auoo/libao/version'

Gem::Specification.new do |spec|
  spec.name          = "auoo-libao"
  spec.version       = Auoo::Libao::VERSION
  spec.authors       = ["shinokaro"]
  spec.email         = ["shinokaro@hotmail.co.jp"]

  spec.summary       = %q{Audio library for Ruby. Use by binding Libao.}
  spec.description   = %q{auoo-libao is a GEM for playing sounds from Ruby. Libao (https://www.xiph.org/ao/) is used to output audio from the PC.}
  spec.homepage      = "https://github.com/shinokaro/auoo-libao"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shinokaro/auoo-libao"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  #spec.bindir        = "exe"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
