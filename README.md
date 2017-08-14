Raspberry Pi Security Onion Dockerfile
============
# rpi-security-onion
Automated Security Onion for the Raspberry Pi.
(https://github.com/hwegge2/rpi-security-onion)

This repository contains the Dockerfile for setting up a Security Onion on a Raspberry Pi. 

## Get Latest

- git clone (https://github.com/hwegge2/rpi-security-onion)
- cd rpi-security-onion

## Features:

- No Defined Authentication
- User Defined Authentication
- Custom Workspace directory via mounting Volume containers
- Automated Build Process

# Base Docker Image
[resin/rpi-raspbian:wheezy] (https://hub.docker.com/r/resin/rpi-raspbian/)

## Installation 

Download the automated build from the Docker Hub Registry:

docker pull hwegge2/rpi-security-onion

You can also build an image from the Dockerfile:

docker build -t="$USER/rpi-security-onion" github.com/hwegge2/rpi-security-onion .

## Usage

Start up the container

docker run --name rpi-security-onion --rm -ti hwegge2/rpi-security-onion
