#!/usr/bin/expect -f

set key [lindex $argv 0];
set password [lindex $argv 1];
set geth [lindex $argv 2]

spawn $geth --datadir data account import $key
expect "Passphrase:"  {send "$password\n"}
expect "Repeat passphrase:" {send "$password\n"}
interact
