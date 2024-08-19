FROM varilink/tools/host-user
LABEL maintainer='david.williamson@varilink.co.uk'

RUN                                                                            \
  sudo apt-get --yes --no-install-recommends install                           \
    openssh-client                                                             \
    sshfs                                                                   && \
  mkdir ~/.ssh

COPY id_rsa.pub private/config private/id_rsa /tmp/

RUN                                                                            \
  sudo mv /tmp/* ~/.ssh/.                                                   && \
  sudo chown $(whoami):$(whoami) ~/.ssh/*                                   && \ 
  chmod 600 ~/.ssh/id_rsa
