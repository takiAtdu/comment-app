# -*- encoding: utf-8 -*-
# stub: pango 4.2.0 ruby lib
# stub: ext/pango/extconf.rb

Gem::Specification.new do |s|
  s.name = "pango".freeze
  s.version = "4.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby-gnome/ruby-gnome/issues", "changelog_uri" => "https://github.com/ruby-gnome/ruby-gnome/blob/master/NEWS", "documentation_uri" => "https://ruby-gnome2.osdn.jp/hiki.cgi?Ruby%2FPango", "mailing_list_uri" => "https://sourceforge.net/p/ruby-gnome2/mailman/ruby-gnome2-devel-en", "msys2_mingw_dependencies" => "pango", "source_code_uri" => "https://github.com/ruby-gnome/ruby-gnome/tree/master/pango" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["The Ruby-GNOME Project Team".freeze]
  s.date = "2023-08-19"
  s.description = "Ruby/Pango is a Ruby binding of pango-1.x based on GObject-Introspection.".freeze
  s.email = "ruby-gnome2-devel-en@lists.sourceforge.net".freeze
  s.extensions = ["ext/pango/extconf.rb".freeze]
  s.files = ["ext/pango/extconf.rb".freeze]
  s.homepage = "https://ruby-gnome2.osdn.jp/".freeze
  s.licenses = ["LGPL-2.1+".freeze]
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Ruby/Pango is a Ruby binding of pango-1.x.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<cairo-gobject>.freeze, ["= 4.2.0"])
    s.add_runtime_dependency(%q<gobject-introspection>.freeze, ["= 4.2.0"])
  else
    s.add_dependency(%q<cairo-gobject>.freeze, ["= 4.2.0"])
    s.add_dependency(%q<gobject-introspection>.freeze, ["= 4.2.0"])
  end
end
