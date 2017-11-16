# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "slideshow/version"

Gem::Specification.new do |spec|
  spec.name          = "slideshow"
  spec.version       = Slideshow::VERSION
  spec.authors       = ["achengscode"]
  spec.email         = ["docaholic@gmail.com"]

  spec.summary       = %q{Run a markdown based slideshow.}
  spec.description   = %q{Run a slideshow based off of `remark.js` in your browser.}
  spec.homepage      = "https://github.com/achengscode/slideshow"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["slideshow"]
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
