# Simple Reusable SMS Alert for BASH scripting

## Usage

* Get a Twilio Account, write down your Account SID and Auth Token (aka `$ACCT` and `$AUTH`) from [here](https://www.twilio.com/console).
* Get your ten digit phone number from Twilio [here](https://www.twilio.com/console/phone-numbers/incoming).
* Enter in your own phone number
* fill out sample `.env` file (`cp .env.sample .env && vim .env`)

```bash
export AUTH=
export ACCT=
export PERSONALPHONE=
export TWILIOPHONE=
```

* use script, see `index.sh` for example.


## Use Cases

* Watch over a PID: `./sample_usage_PID_watcher.sh <YOUR_PID_HERE>`
