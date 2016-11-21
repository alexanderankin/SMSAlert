#!/usr/bin/env bash

. .env
. ./validation.sh

. ./sms_function.sh

send_sms "hello world"
