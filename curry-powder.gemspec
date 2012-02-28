# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{curry-powder}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5")
  s.authors = ["Andrea Campi"]
  s.date = %q{2012-02-28}
  s.description = %q{A Compass plugin to provide basic styles for treesaver.js.}
  s.email = %w{andrea.campi@zephirworks.com}
  s.has_rdoc = false
  s.files = [
    "lib/curry.rb",
    "stylesheets/_curry.scss",
    "stylesheets/curry/_basic.scss",
    "stylesheets/curry/_chrome.scss",
    "stylesheets/curry/_config.scss",
    "stylesheets/curry/_grid.scss",
    "stylesheets/curry/_layout.scss",
    "stylesheets/curry/_reset.scss",
    "stylesheets/curry/basic/_base.scss",
    "stylesheets/curry/chrome/_base.scss",
    "stylesheets/curry/chrome/_controls.scss",
    "stylesheets/curry/chrome/_viewer.scss",
    "stylesheets/curry/grid/_base.scss",
    "stylesheets/curry/layout/_base.scss",
    "templates/project/_use_curry.scss",
    "templates/project/manifest.rb"
  ]
  s.homepage = %q{http://zephirworks.com/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{curry-powder}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Compass stylesheets for treesaver.js.}
  s.add_dependency(%q<compass>, ["~> 0.11"])
end
