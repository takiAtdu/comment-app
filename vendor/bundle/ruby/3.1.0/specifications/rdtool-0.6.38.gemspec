# -*- encoding: utf-8 -*-
# stub: rdtool 0.6.38 ruby lib

Gem::Specification.new do |s|
  s.name = "rdtool".freeze
  s.version = "0.6.38"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Youhei SASAKI".freeze]
  s.date = "2012-11-27"
  s.description = "RD is multipurpose documentation format created for documentating Ruby and output of Ruby world. You can embed RD into Ruby script. And RD have neat syntax which help you to read document in Ruby script. On the other hand, RD have a feature for class reference.".freeze
  s.email = "uwabami@gfd-dennou.org".freeze
  s.executables = ["rd2".freeze, "rdswap.rb".freeze]
  s.files = ["bin/rd2".freeze, "bin/rdswap.rb".freeze]
  s.homepage = "http://github.com/uwabami/rdtool".freeze
  s.licenses = ["GPL-2+".freeze, "Ruby".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "RDtool is formatter for RD.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<racc>.freeze, ["~> 1.4.6"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<racc>.freeze, ["~> 1.4.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
