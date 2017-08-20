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
apt-get update &&\ 
apt-get -y install bro &&\
apt-get -y install suricata &&\
apt-get -y install snort &&\
apt-get -y install libdaq2 &&\
apt-get -y install libhtp &&\
apt-get -y install ossec-hids-server &&\
apt-get -y install prads &&\
apt-get -y install salt-master &&\
apt-get -y install securityonion-argus-server &&\
apt-get -y install securityonion-argus-client &&\
apt-get -y install securityonion-capme &&\
apt-get -y install securityonion-client &&\
apt-get -y install securityonion-elsa &&\
apt-get -y install securityonion-elsa-client &&\
apt-get -y install securityonion-elsa-extras &&\
apt-get -y install securityonion-elsa-node-perl &&\
apt-get -y install securityonion-elsa-perl &&\
apt-get -y install securityonion-elsa-web-perl &&\
apt-get -y install securityonion-et-rules &&\
apt-get -y install securityonion-http-agent &&\
apt-get -y install securityonion-iso &&\
apt-get -y install securityonion-libdata-serializable &&\
apt-get -y install securityonion-limits &&\
apt-get -y install securityonion-ndpi &&\
apt-get -y install securityonion-netsniff-ng &&\
apt-get -y install securityonion-networkminer &&\
apt-get -y install securityonion-nsmnow-admin-scripts &&\
apt-get -y install securityonion-onionsalt &&\
apt-get -y install securityonion-ossec-rules &&\
apt-get -y install securityonion-passenger &&\
apt-get -y install securityonion-passenger-conf &&\
apt-get -y install securityonion-pfring-devel &&\
apt-get -y install securityonion-pfring-id &&\
apt-get -y install securityonion-pfring-module &&\
apt-get -y install securityonion-profile &&\
apt-get -y install securityonion-pulledpork &&\
apt-get -y install securityonion-reassembler &&\
apt-get -y install securityonion-rule-update &&\
apt-get -y install securityonion-samples &&\
apt-get -y install securityonion-samples-jackcr &&\
apt-get -y install securityonion-samples-markofu &&\
apt-get -y install securityonion-samples-mta &&\
apt-get -y install securityonion-samples-pnsm &&\
apt-get -y install securityonion-samples-shellshock &&\
apt-get -y install securityonion-setup &&\
apt-get -y install securityonion-sguil-agent-ossec &&\
apt-get -y install securityonion-sguil-agent-client &&\
apt-get -y install securityonion-sguil-db-purge &&\
apt-get -y install securityonion-skel &&\
apt-get -y install securityonion-sostat &&\
apt-get -y install securityonion-sphinxsearch &&\
apt-get -y install securityonion-libtcl &&\


apt-get -y dist-upgrade &&\
apt-get -y autoremove &&\
apt-get clean &&\
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Execute command
# ------------------------------------------------------------------------------
CMD ["/bin/bash"]