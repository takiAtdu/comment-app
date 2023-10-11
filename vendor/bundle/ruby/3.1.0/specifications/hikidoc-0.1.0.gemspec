# -*- encoding: utf-8 -*-
# stub: hikidoc 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "hikidoc".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kazuhiko".freeze, "SHIBATA Hiroshi".freeze]
  s.date = "2014-04-05"
  s.description = "'HikiDoc' is a text-to-HTML conversion tool for web writers.".freeze
  s.email = ["kazuhiko@fdiary.net".freeze, "shibata.hiroshi@gmail.com".freeze]
  s.executables = ["hikidoc".freeze]
  s.files = ["bin/hikidoc".freeze]
  s.homepage = "https://github.com/hiki/hikidoc".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "'HikiDoc' is a text-to-HTML conversion tool for web writers. HikiDoc allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid HTML (or XHTML).".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
