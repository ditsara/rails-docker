#!/bin/sh

# sets dockerhost in hosts file
sh -c /root/dockerhost.sh
# runs bundle install, if required
sh -c /root/bundle.sh
exec "$@"
