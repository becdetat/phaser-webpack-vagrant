#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y linux-headers-$(uname -r) build-essential curl zip unzip
apt-get -y dist-upgrade
