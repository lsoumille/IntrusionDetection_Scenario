#!/bin/bash

echo "Starting log injecton for DDOS ..."
echo "Inject logs from PaloAlto ..."
export PATH='/home/adm-infra/punchplatform-standalone-3.3.5/bin':$PATH && export PUNCHPLATFORM_CONF_DIR='/home/adm-infra/punchplatform-standalone-3.3.5/conf' && export PUNCHPLATFORM_LOG_DIR='/home/adm-infra/punchplatform-standalone-3.3.5/logs' && export TERM='xterm' && /home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/ddos/palo_alto_firewall_allow.json > /dev/null & echo $!
echo "Inject logs from Proxy ..."
export PATH='/home/adm-infra/punchplatform-standalone-3.3.5/bin':$PATH && export PUNCHPLATFORM_CONF_DIR='/home/adm-infra/punchplatform-standalone-3.3.5/conf' && export PUNCHPLATFORM_LOG_DIR='/home/adm-infra/punchplatform-standalone-3.3.5/logs' && export TERM='xterm' && /home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/ddos/squid.json > /dev/null & echo $!
echo "Inject logs from Apache ..."
export PATH='/home/adm-infra/punchplatform-standalone-3.3.5/bin':$PATH && export PUNCHPLATFORM_CONF_DIR='/home/adm-infra/punchplatform-standalone-3.3.5/conf' && export PUNCHPLATFORM_LOG_DIR='/home/adm-infra/punchplatform-standalone-3.3.5/logs' && export TERM='xterm' && /home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/ddos/apache_httpd_injector.json > /dev/null & echo $!
echo "Injection done"

