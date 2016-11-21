#!/usr/bin/env bash

. .env
. ./validation.sh

. ./sms_function.sh

if (( $# < 1 )); then
  echo "Usage: ./sample_usage_PID_watcher.sh <PID>"
  exit 1
fi

pidrunning () {
  if ps -p $1 > /dev/null; then
    return 0
  else
    return 1
  fi
}

while pidrunning $1; do sleep 2; done;

send_sms "$1 is not running anymore"
echo "$1 is not running anymore"
echo "done"
      