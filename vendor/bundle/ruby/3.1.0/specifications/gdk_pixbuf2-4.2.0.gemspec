# -*- encoding: utf-8 -*-
# stub: gdk_pixbuf2 4.2.0 ruby lib
# stub: dependency-check/Rakefile

Gem::Specification.new do |s|
  s.name = "gdk_pixbuf2".freeze
  s.version = "4.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "msys2_mingw_dependencies" => "gdk-pixbuf2" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["The Ruby-GNOME Project Team".freeze]
  s.date = "2023-08-19"
  s.description = "Ruby/GdkPixbuf2 is a Ruby binding of GdkPixbuf-2.x.".freeze
  s.email = "ruby-gnome2-devel-en@lists.sourceforge.net".freeze
  s.extensions = ["dependency-check/Rakefile".freeze]
  s.files = ["dependency-check/Rakefile".freeze]
  s.homepage = "https://ruby-gnome2.osdn.jp/".freeze
  s.licenses = ["LGPL-2.1+".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Ruby/GdkPixbuf2 is a Ruby binding of GdkPixbuf-2.x.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<gio2>.freeze, ["= 4.2.0"])
  else
    s.add_dependency(%q<gio2>.freeze, ["= 4.2.0"])
  end
end
