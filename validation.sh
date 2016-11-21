#!/usr/bin/env bash

. .env

correct_length=10

size=${#PERSONALPHONE}
if [ "$size" -ne "$correct_length" ]; then
  echo "Need nine digit phone number to send to"
  exit 1
fi

size=${#TWILIOPHONE}
if [ "$size" -ne "$correct_length" ]; then
  echo "Need nine digit phone number to send from"
  exit 1
fi
