# ------------------------------------------------------------------------------
# Based on a work at https://github.com/docker/docker.
# ------------------------------------------------------------------------------
# Pull base image.
FROM armv7/armhf-ubuntu:14.04.3
MAINTAINER Hans Weggeman <hpweggeman@gmail.com>

# ------------------------------------------------------------------------------
# Install dependencies
RUN apt-get update &&\

# ------------------------------------------------------------------------------
# Install Security Onion
apt-get -y install python2.7 software-properties-common &&\ 
add-apt-repository -y ppa:poofasity/arm-securityonion &&\ 
apt-get remove -y software-properties-common rsyslog &&\ 
apt-get -y autoremove &&\ 
apt-get -y install bro &&\
apt-get -y install suricata &&\
apt-get update &&\ 
apt-get -y dist-upgrade &&\
apt-get clean &&\
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Execute command
# ------------------------------------------------------------------------------
CMD ["/bin/bash"]