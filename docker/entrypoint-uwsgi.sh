#!/bin/sh

umask 0002

exec uwsgi \
  "--${DD_UWSGI_MODE}" "${DD_UWSGI_ENDPOINT}" \
  --protocol uwsgi \
  --enable-threads \
  --processes 10 \
  --threads 10 \
  --wsgi dojo.wsgi:application
