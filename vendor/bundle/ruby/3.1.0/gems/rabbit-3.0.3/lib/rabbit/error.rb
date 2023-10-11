# Copyright (C) 2004-2022  Sutou Kouhei <kou@cozmixng.org>
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

module Rabbit
  class Error < StandardError
    include GetText
  end

  class ImageLoadError < Error
  end

  class ImageFileDoesNotExistError < ImageLoadError
    attr_reader :filename
    def initialize(filename)
      @filename = filename
      utf8_filename = GLib.filename_to_utf8(filename)
      super(_("no such file: %s") % utf8_filename)
    end
  end

  class ImageLoadWithExternalCommandError < ImageLoadError
    attr_reader :type, :command
    def initialize(type, command, additional_info=nil)
      @type = type
      @command = command
      format =
        _("can't handle %s because the following command " \
          "can't be run successfully: %s")
      msg = format % [@type, @command]
      msg << "\n#{additional_info}" if additional_info
      super(msg)
    end
  end

  class EPSCanNotHandleError < ImageLoadWithExternalCommandError
    def initialize(command, tried_commands)
      format = _("tried gs commands: %s")
      additional_info = format % tried_commands.inspect
      super("EPS", command, additional_info)
    end
  end

  class DiaCanNotHandleError < ImageLoadWithExternalCommandError
    def initialize(command, tried_commands)
      format = _("tried dia commands: %s")
      additional_info = format % tried_commands.inspect
      super("Dia", command, additional_info)
    end
  end

  class GIMPCanNotHandleError < ImageLoadWithExternalCommandError
    def initialize(command, tried_commands)
      format = _("tried gimp commands: %s")
      additional_info = format % tried_commands.inspect
      super("GIMP", command, additional_info)
    end
  end

  class TeXCanNotHandleError < ImageLoadWithExternalCommandError
    def initialize(command, additional_info=nil)
      super("TeX", command, additional_info)
    end
  end

  class AAFigureCanNotHandleError < ImageLoadWithExternalCommandError
    def initialize(command, additional_info=nil)
      super("aafigure", command, additional_info)
    end
  end

  class BlockDiagCanNotHandleError < ImageLoadWithExternalCommandError
    def initialize(command, additional_info=nil)
      super("blockdiag", command, additional_info)
    end
  end

  class MermaidCanNotHandleError < ImageLoadWithExternalCommandError
    def initialize(command, additional_info=nil)
      super("Mermaid", command, additional_info)
    end
  end

  class UnknownPropertyError < Error
    attr_reader :name
    def initialize(name)
      @name = name
      super(_("Unknown property: %s") % name)
    end
  end

  class CantAllocateColorError < Error
    attr_reader :color
    def initialize(color)
      @color = color
      super(_("can't allocate color: %s"), color)
    end
  end

  class SourceUnreadableError < Error
  end

  class NotExistError < SourceUnreadableError
    attr_reader :name
    def initialize(name)
      @name = name
      super(_("not exist: %s") % @name)
    end
  end

  class NotFileError < SourceUnreadableError
    attr_reader :name
    def initialize(name)
      @name = name
      super(_("not a file: %s") % @name)
    end
  end

  class NotReadableError < SourceUnreadableError
    attr_reader :name
    def initialize(name)
      @name = name
      super(_("can not be read: %s") % @name)
    end
  end

  class ImmutableSourceTypeError < Error
    attr_reader :source_type
    def initialize(source_type)
      @source_type = source_type
      super(_("immutable source type: %s") % @source_type)
    end
  end

  class ThemeExit < Error
    def initialize(message=nil)
      @have_message = !message.nil?
      super
    end

    def have_message?
      @have_message
    end
  end

  class NotAvailableInterfaceError < Error
    attr_reader :name
    def initialize(name)
      @name = name
      super(_("not available interface: %s") % @name)
    end
  end

  class CantFindHTMLTemplate < Error
    attr_reader :name
    def initialize(name)
      @name = name
      super(_("can't find HTML template: %s") % @name)
    end
  end

  class CantFindThemeRDTemplate < Error
    attr_reader :name
    def initialize(name)
      @name = name
      super(_("can't find theme RD template: %s") % @name)
    end
  end

  class InvalidMotionError < Error
    attr_reader :motion
    def initialize(motion)
      @motion = motion
      super(_("invalid motion: %s") % @motion)
    end
  end

  class InvalidSizeError < Error
    attr_reader :filename, :prop_name, :value
    def initialize(filename, prop_name, value)
      @filename = filename
      @prop_name = prop_name
      @value = value
      params = {
        :filename => filename,
        :prop_name => prop_name,
        :value => value,
      }
      super(_("invalid value of size property \"%{prop_name}\" " \
              "of \"%{filename}\": %{value}") % params)
    end
  end

  class ParseFinish < Error
  end

  class ParseError < Error
  end

  class UnsupportedFormatError < Error
  end

  class ApplyFinish < Error
  end

  class UnknownCursorTypeError < Error
    attr_reader :type
    def initialize(type)
      @type = type
      super(_("unknown cursor type: %s") % @type)
    end
  end

  class NoPrintSupportError < Error
    def initialize
      super(_("print isn't supported"))
    end
  end
end
