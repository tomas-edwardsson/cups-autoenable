#!/bin/bash

# Copyright 2013, Tomas Edwardsson 
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


# This script looks for disabled cups printers and automaticly
# enables them if disabled.

# You can put it in cron every minute or something where printers disable
# automatically.


for printer in $(lpstat -p|grep disabled|awk '{print $2}')
do
	logger -t "cups-autoenable" "Printer ${printer} is disabled, auto-enabling"
	cupsenable ${printer}
done

