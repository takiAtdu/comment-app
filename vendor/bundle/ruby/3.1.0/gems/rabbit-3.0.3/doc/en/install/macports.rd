---
layout: en
title: Install with MacPorts
---
== How to install Rabbit with MacPorts on Mac OS X

This document describes how to install Rabbit with MacPorts and how to use
Rabbit on Mac OS X.

=== Requirements

The following programs are needed.

* Xcode Tools (from Xcode Tools DVD or ADC)
* X11 (from Mac OS X System DVD)

Remember to select "X11 SDK" when installing the Xcode Tools.

=== Install MacPorts

see ((<URL:http://www.macports.org/>)).

=== installing Rabbit

You might want to do the following to update information for
required ports.

  ~% sudo port sync

The following command will install rabbit and its dependencies.

  ~% sudo port install rb-rabbit

You can install these ports to make rabbit even better.

* Ruby-GetText-Package (rb-gettext) - enable I18N message catalogs
* net/irc (rb-net-irc) - rabbirc requires net/irc

  ~% sudo port install rb-gettext
  ~% sudo port install rb-net-irc

==== Rabbit without X11

If you want to run rabbit without X11, install pango, cairo and gtk2 without
X11 before install rb-rabbit.

  ~% sudo port install pango +no_x11 +quartz
  ~% sudo port install cairo +no_x11 +quartz
  ~% sudo port install gtk2 +no_x11 +quartz

=== tips for X11 environment

==== launch X11.app

Rabbit requires X11.app, which is under /Applications/Utilities/.

==== DISPLAY environment variable

Mac OS X 10.4 or earlier, DISPLAY environment was not declared.
Remember to set this variable.

=== upgrade Rabbit

the following operation upgrades your Rabbit.

  ~% sudo port sync
  ~% sudo port upgrade rb-rabbit

If you want to upgrade Rabbit only (rb-rabbit), you can upgrade with the "-n"
option.

  ~% sudo port -n upgrade rb-rabbit

=== Contact

* ((<"../users.rd"/Users group>))
* Kimura Wataru (kimuraw at i nifty.jp) - maintainer of Rabbit MacPorts
