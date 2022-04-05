# SimpleFailedPasswordMonitor
A simple script to monitor for failed password attempts on your linux server.
Think of a passive honeypot if you have a very good password. You will be notified via Pushover whenever someone is trying to login.

Installation:
1. copy check.sh in a secret path on your linux server using your root account
2. add root permissions to run the script chmod +x check.sh
3. edit user and token fields with your credentials from Pushover
4. add script to root's crontab with * * * * * /path/to/script/check.sh 2>&1

You will receive a notification every minute for 5 times when someone is failing to connect to your server.
