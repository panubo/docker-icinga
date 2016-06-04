#!/usr/bin/env bash

set -e

[ "$DEBUG" == 'true' ] && set -x

# Copy default config from cache
if [ ! "$(ls -A /var/spool/icinga)" ]; then
   cp -a /var/spool/icinga.cache/* /var/spool/icinga/
fi

exec /sbin/init.real
