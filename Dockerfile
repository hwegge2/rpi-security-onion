# ------------------------------------------------------------------------------
# Based on a work at https://github.com/docker/docker.
# ------------------------------------------------------------------------------
# Pull base image.
FROM armv7/armhf-ubuntu:14.04
MAINTAINER Hans Weggeman <hpweggeman@gmail.com>

# ------------------------------------------------------------------------------
# Install dependencies
 RUN sudo apt-get update && sudo apt-get upgrade

# ------------------------------------------------------------------------------
# Install Security Onion
RUN sudo apt-get update &&\
apt-get -Y install software-properties-common &&\
apt-get -Y install apt-utils &&\
add-apt-repository -Y ppa:securityonion/stable &&\
apt-get -Y install securityonion-all syslog-ng-core &&\
apt-get remove -Y software-properties-common rsyslog &&\
apt-get -Y autoremove &&\
apt-get update &&\
apt-get -Y dist-upgrade &&\
apt-get clean &&\
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


#Execute command
# ------------------------------------------------------------------------------

CMD ["/bin/bash"]