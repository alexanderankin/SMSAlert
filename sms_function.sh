#!/usr/bin/env bash

send_sms () {

  curl -X POST "https://api.twilio.com/2010-04-01/Accounts/${ACCT}/Messages.json" \
  --data-urlencode "To=+1${PERSONALPHONE}"  \
  --data-urlencode "From=+1${TWILIOPHONE}"  \
  --data-urlencode "Body=Alert: $1"  \
  -u $ACCT:$AUTH 2>&1 > /dev/null

}
