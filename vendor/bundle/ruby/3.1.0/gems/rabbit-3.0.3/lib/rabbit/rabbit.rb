# Copyright (C) 2004-2012  Kouhei Sutou <kou@cozmixng.org>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

require "rabbit/config"

require "rabbit/gettext"
require "rabbit/version"

require "rabbit/error"

require "rabbit/gtk"

module Rabbit
  TMP_DIR_NAME = ".tmp"

  @@application = nil
  @@gui_init_procs = []
  @@cleanup_procs = []

  class << self
    def application
      @@application ||=
        Gtk::Application.new("org.rabbit-shocker.Rabbit",
                             [:non_unique, :handles_command_line])
    end
  end
end
