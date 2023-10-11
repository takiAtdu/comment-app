# Copyright (C) 2017-2021  Ruby-GNOME Project Team
#
# This library is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

class NativePackageInstaller
  module Platform
    class SUSE
      Platform.register(self)

      class << self
        def current_platform?
          os_release = OSRelease.new
          os_release.id_like.include?("suse")
        end
      end

      def package(spec)
        spec[:suse] || spec[:fedora] || spec[:rhel] || spec[:redhat]
      end

      def install_command
        "zypper --non-interactive install"
      end

      def need_super_user_priviledge?
        true
      end
    end
  end
end
