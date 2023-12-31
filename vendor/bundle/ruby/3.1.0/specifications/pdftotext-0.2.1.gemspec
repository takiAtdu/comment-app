# -*- encoding: utf-8 -*-
# stub: pdftotext 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pdftotext".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Balter".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-10-25"
  s.email = ["ben.balter@github.com".freeze]
  s.homepage = "https://github.com/benbalter/pdftotext".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "A Ruby wrapper for the `pdftotext` command line library".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<cliver>.freeze, ["~> 0.3"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.10"])
  else
    s.add_dependency(%q<cliver>.freeze, ["~> 0.3"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.10"])
  end
end
