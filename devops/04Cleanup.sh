#!/bin/bash
cf apps
cf stop Cebit2017-Python
cf apps

#!/bin/bash
cf apps
cf delete Cebit2017-Python -f
cf apps

#!/bin/bash
cf apps
cf rename Cebit2017-Python-NG Cebit2017-Python
cf apps

#!/bin/bash
cf apps
cf scale Cebit2017-Python -i 1
cf apps

#!/bin/bash
wget http://public.dhe.ibm.com/cloud/bluemix/cli/bluemix-cli/Bluemix_CLI_0.4.6_amd64.tar.gz
tar xvzf Bluemix_CLI_0.4.6_amd64.tar.gz
chmod 777 Bluemix_CLI/bin/bluemix
Bluemix_CLI/bin/bluemix plugin install auto-scaling -r Bluemix

Bluemix_CLI/bin/bluemix as policy-attach Cebit2017-Python -p devops/auto-scaling.json