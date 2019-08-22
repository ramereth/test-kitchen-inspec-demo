#!/bin/bash
cd ../../test-kitchen-inspec-demo/inspec-demo
set -x
inspec exec --sudo -i .vagrant/machines/default/virtualbox/private_key \
  --no-color -t ssh://vagrant@127.0.0.1:2222 \
  https://github.com/dev-sec/linux-baseline.git | less
vagrant ssh
inspec exec --sudo -i .vagrant/machines/default/virtualbox/private_key \
  --no-color -t ssh://vagrant@127.0.0.1:2222 \
  https://github.com/dev-sec/linux-baseline.git | less
