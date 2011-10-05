# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{compass-treesaver-plugin}
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5")
  s.authors = ["Andrea Campi"]
  s.date = %q{2011-03-18}
  s.description = %q{A Compass plugin to provide basic styles for treesaver.js.}
  s.email = %w{andrea.campi@zephirworks.com}
  s.has_rdoc = false
  s.files = [
    "compass-treesaver-plugin.gemspec",
    "lib/compass-treesaver-plugin.rb",
    "stylesheets/_treesaver.scss",
    "stylesheets/treesaver/_basic.scss",
    "stylesheets/treesaver/_chrome.scss",
    "stylesheets/treesaver/_config.scss",
    "stylesheets/treesaver/_grid.scss",
    "stylesheets/treesaver/_layout.scss",
    "stylesheets/treesaver/_reset.scss",
    "stylesheets/treesaver/basic/_base.scss",
    "stylesheets/treesaver/chrome/_base.scss",
    "stylesheets/treesaver/chrome/_controls.scss",
    "stylesheets/treesaver/chrome/_viewer.scss",
    "stylesheets/treesaver/grid/_base.scss",
    "stylesheets/treesaver/layout/_base.scss",
    "templates/project/_compass_treesaver.scss",
    "templates/project/manifest.rb"
  ]
  s.homepage = %q{http://zephirworks.com/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{compass-treesaver-plugin}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Compass stylesheets for treesaver.js.}
  s.add_dependency(%q<compass>, ["~> 0.11"])
end