#!/bin/bash

#Install Bluemix and detach the autoscaler
wget http://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/Bluemix_CLI_0.4.6_amd64.tar.gz
tar xvzf Bluemix_CLI_0.4.6_amd64.tar.gz
chmod 777 Bluemix_CLI/bin/bluemix
Bluemix_CLI/bin/bluemix plugin install auto-scaling -r Bluemix

Bluemix_CLI/bin/bluemix as policy-detach Cebit2017-Python



#!/bin/bash
cf scale Cebit2017-Python -i 10
sleep 5


#!/bin/bash
cf add-plugin-repo bluemix http://plugins.ng.bluemix.net
cf install-plugin active-deploy -r bluemix -f

cf active-deploy-create Cebit2017-Python Cebit2017-Python-NG -u 120 -t 30 -w 60