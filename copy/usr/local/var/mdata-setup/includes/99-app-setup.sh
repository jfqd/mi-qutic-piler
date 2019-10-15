#!/bin/bash

if /native/usr/sbin/mdata-get mail_smarthost 1>/dev/null 2>&1; then
  MAIL_UID=$(/native/usr/sbin/mdata-get mail_auth_user)
  MAIL_PWD=$(/native/usr/sbin/mdata-get mail_auth_pass)
  MAIL_HOST=$(/native/usr/sbin/mdata-get mail_smarthost)
fi

# start service
systemctl daemon-reload

# journalctl -f -u your-app
# systemctl status your-app
# systemctl stop your-app