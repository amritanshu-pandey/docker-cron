#!/bin/bash
set -eux

echo "setup cron daemon"
cp /cron-scripts/* /etc/cron.d/
chmod +x /etc/cron.d/*
crontab /etc/cron.d/*

echo "Cron jobs:"
crontab -l

echo "Start cron daemon"
cron -f
