# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "slideshow_md/version"

Gem::Specification.new do |spec|
  spec.name          = "slideshow-md"
  spec.version       = SlideshowMD::VERSION
  spec.authors       = ["achengscode"]
  spec.email         = ["docaholic@gmail.com"]

  spec.summary       = %q{Run a markdown based slideshow.}
  spec.description   = %q{Run a slideshow based off of `remark.js` in your browser.}
  spec.homepage      = "https://github.com/achengscode/slideshow"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["slideshow-md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra"
  spec.add_dependency "thor"
  spec.add_dependency "erubis"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
