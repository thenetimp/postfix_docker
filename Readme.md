Using this guide as a reference to set things up.

https://www.linuxbabe.com/mail-server/setup-basic-postfix-mail-sever-ubuntu-14-04


Things to do outside of a docker container.

1) set the FQDN  ```sudo hostnamectl set-hostname <your-fqdn>```  A common FQDN for a mail server is mail.yourdomain.com.

2) Make sure the hosts date is set to the correct time for it's timezone, and sync it with a time server.  Also do this for docker containers

https://stackoverflow.com/questions/24551592/how-to-make-sure-dockers-time-syncs-with-that-of-the-host

2a) make sure you are using UTC on the server time.  ```rm /etc/localtime && ln -s /usr/share/zoneinfo/UTC /etc/localtime```


3) Make sure the IP address of the server reverse resolves to the FQDN.





