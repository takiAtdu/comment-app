# -*- encoding: utf-8 -*-
# stub: pdfkit 0.8.7.3 ruby lib

Gem::Specification.new do |s|
  s.name = "pdfkit".freeze
  s.version = "0.8.7.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jared Pace".freeze, "Relevance".freeze]
  s.date = "2023-05-30"
  s.description = "Uses wkhtmltopdf to create PDFs using HTML".freeze
  s.email = ["jared@codewordstudios.com".freeze]
  s.homepage = "https://github.com/pdfkit/pdfkit".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.requirements = ["wkhtmltopdf".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "HTML+CSS -> PDF".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<activesupport>.freeze, [">= 4.1.11"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0.9.10"])
    s.add_development_dependency(%q<rack-test>.freeze, [">= 0.5.6"])
    s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 4.0.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 4.1.11"])
    s.add_dependency(%q<mocha>.freeze, [">= 0.9.10"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0.5.6"])
    s.add_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_dependency(%q<rdoc>.freeze, [">= 4.0.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
