#!/usr/bin/expect -f

spawn ssh -4 -D 0.0.0.0:1080 -o StrictHostKeyChecking=no $::env(ssh_user)@$::env(ssh_host)
expect "*ssword: "
send $::env(ssh_pass)\n
interact