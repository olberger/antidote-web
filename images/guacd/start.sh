#!/bin/bash

exec /bin/tini -- /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
