FROM alpine

LABEL "forked-from"="http://github.com/wei/git-sync"
LABEL "repository"="https://github.com/zimbres/git-sync"
LABEL "maintainer"="Marcio Zimbres <marcio@zimbres.com>"

RUN apk add --no-cache git openssh-client
RUN echo "  StrictHostKeyChecking no" >> /etc/ssh/ssh_config
RUN echo "  PubkeyAcceptedAlgorithms +ssh-rsa" >> /etc/ssh/ssh_config
RUN echo "  HostkeyAlgorithms +ssh-rsa" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
