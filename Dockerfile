from ubuntu:18.04

# Swap to bash as the carrier because of debconf-set-selections redirection operators below
# /bin/sh does not have redirection operator but /bin/bash does.
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update

RUN debconf-set-selections <<< "postfix postfix/mailname string your.hostname.com"
RUN debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
RUN apt-get install postfix postfix-policyd-spf-python opendkim opendkim-tools -y

# Temporary until I can figure out how to instansiate postfix from here.
COPY ./cmd.sh /cmd.sh
RUN chmod 755 /cmd.sh

CMD ["/cmd.sh"]