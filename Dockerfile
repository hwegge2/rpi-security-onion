# ------------------------------------------------------------------------------
# Based on a work at https://github.com/docker/docker.
# ------------------------------------------------------------------------------
# Pull base image.
FROM armv7/armhf-ubuntu:jessie
MAINTAINER Hans Weggeman <hpweggeman@gmail.com>

# ------------------------------------------------------------------------------
# Install dependencies
 RUN apt-get update && sudo apt-get upgrade

# ------------------------------------------------------------------------------
# Install Security Onion
RUN apt-get update &&\
apt-get -y install software-properties-common &&\
apt-get -y install apt-utils &&\
apt-get -y install python3 &&\
add-apt-repository -y ppa:securityonion/stable &&\
apt-get -y install securityonion-all syslog-ng-core &&\
apt-get remove -y software-properties-common rsyslog &&\
apt-get -y autoremove &&\
apt-get update &&\
apt-get -y dist-upgrade &&\
apt-get clean &&\
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


#Execute command
# ------------------------------------------------------------------------------

CMD ["/bin/bash"]