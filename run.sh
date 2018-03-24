#!/bin/bash

set -e

> /etc/sane.d/saned.conf
for HOST in ${ALLOW_HOSTS}; do
  echo $HOST >> /etc/sane.d/saned.conf
done

inetd -f -e
