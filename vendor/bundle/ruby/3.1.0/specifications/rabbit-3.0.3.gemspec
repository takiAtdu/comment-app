# -*- encoding: utf-8 -*-
# stub: rabbit 3.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rabbit".freeze
  s.version = "3.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kouhei Sutou".freeze]
  s.date = "2023-07-01"
  s.description = "You can create your slide as a text file. It means that you can version controlyour slide like your Ruby scripts. You can custom your slide style by Ruby.So Rabbit is for Rubyist.\n\nYou can use RD, Markdown and Wiki format as slide source.\n\nRabbit provides programmer friendly keyboard interface. It uses Emacs and Vistyle keybindings by default.\n\nYou can use PDF and image as slide source. Rabbit can show PDF and imagedirectly. You can create your slide by other presentation tool and show yourslide by Rabbit. If you show your slide by Rabbit, you can use programmerfriendly keyboard interface provided by Rabbit to control your slide.\n\nYou can upload your slide as a gem. If you publish your slide as a gem, youcan see your slide at https://slide.rabbit-shocker.org/ .".freeze
  s.email = ["kou@cozmixng.org".freeze]
  s.executables = ["rabbirc".freeze, "rabbit".freeze, "rabbit-command".freeze, "rabbit-slide".freeze, "rabbit-theme".freeze]
  s.files = ["bin/rabbirc".freeze, "bin/rabbit".freeze, "bin/rabbit-command".freeze, "bin/rabbit-slide".freeze, "bin/rabbit-theme".freeze]
  s.homepage = "http://rabbit-shocker.org/".freeze
  s.licenses = ["GPLv2+".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Rabbit is a presentation tool for Rubyist".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<gdk_pixbuf2>.freeze, [">= 3.0.9"])
    s.add_runtime_dependency(%q<gtk3>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rsvg2>.freeze, [">= 3.1.4"])
    s.add_runtime_dependency(%q<poppler>.freeze, [">= 3.2.5"])
    s.add_runtime_dependency(%q<hikidoc>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rdtool>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rttool>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<coderay>.freeze, [">= 1.0.0"])
    s.add_runtime_dependency(%q<kramdown-parser-gfm>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<gettext>.freeze, [">= 3.0.1"])
    s.add_runtime_dependency(%q<rouge>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit-rr>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<jekyll>.freeze, [">= 0"])
  else
    s.add_dependency(%q<gdk_pixbuf2>.freeze, [">= 3.0.9"])
    s.add_dependency(%q<gtk3>.freeze, [">= 0"])
    s.add_dependency(%q<rsvg2>.freeze, [">= 3.1.4"])
    s.add_dependency(%q<poppler>.freeze, [">= 3.2.5"])
    s.add_dependency(%q<hikidoc>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<rdtool>.freeze, [">= 0"])
    s.add_dependency(%q<rttool>.freeze, [">= 0"])
    s.add_dependency(%q<coderay>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<kramdown-parser-gfm>.freeze, [">= 0"])
    s.add_dependency(%q<gettext>.freeze, [">= 3.0.1"])
    s.add_dependency(%q<rouge>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit-rr>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<jekyll>.freeze, [">= 0"])
  end
end
