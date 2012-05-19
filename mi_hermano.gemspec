# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mi_hermano/version"

Gem::Specification.new do |s|
  s.name        = "mi_hermano"
  s.version     = MiHermano::VERSION
  s.authors     = ["Rémi Prévost"]
  s.email       = ["remi@exomel.com"]
  s.homepage    = "http://github.com/remiprev/mi_hermano"
  s.summary     = "Did you know that “fratello” means “brother” in Italian? Strange I know that. I took four years of Spanish."
  s.description = "Mi Hermano translates strings using the Google Spreadsheets API (since the Translate API is no longer available)."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "google-spreadsheet-ruby", "0.2.1"
end
