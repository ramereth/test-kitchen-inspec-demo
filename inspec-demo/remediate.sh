#!/bin/bash
set -xe
curl -L https://omnitruck.chef.io/install.sh | bash -s -- -v 14
wget -O /tmp/os-hardening.tar.gz https://supermarket.chef.io/cookbooks/os-hardening/download
mkdir -p /var/chef/cookbooks
tar -C /var/chef/cookbooks -zxvf /tmp/os-hardening.tar.gz
chef-solo -o "os-hardening"
