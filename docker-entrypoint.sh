#!/bin/ash
# Copyright 2016 LasLabs Inc.
# License LGPL-3.0 or later (http://www.gnu.org/licenses/lgpl.html).

set -e

# Add python as command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- python "$@"
fi

# As argument is not related to python,
# then assume that user wants to run their own process,
# for example a `bash` shell to explore this image
exec "$@"
