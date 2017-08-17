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
apt-get -y install software-properties-common &&\ 
add-apt-repository -y ppa:securityonion/stable &&\ 
apt-get remove -y software-properties-common rsyslog &&\ 
apt-get -y autoremove &&\ 
apt-get update &&\ 
apt-get -y dist-upgrade &&\
apt-get clean &&\
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Execute command
# ------------------------------------------------------------------------------
CMD ["/bin/bash"]