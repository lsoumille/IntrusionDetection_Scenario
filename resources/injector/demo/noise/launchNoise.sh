#!/bin/bash

echo "Starting Noise Injecton ..."
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/apache/apache_httpd_injector.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/unix/psad_noise.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/unix/rkhunter_noise.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/auth/active_directory_noise.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/av/symantec_daily_scan_noise.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/firewalls/checkpoint/checkpoint_firewall_ingoing_noise.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/firewalls/checkpoint/checkpoint_firewall_outgoing_noise.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/firewalls/paloalto/palo_alto_firewall_noiseallow.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/firewalls/paloalto/palo_alto_firewall_noisedeny.json > /dev/null & echo $! 
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/firewalls/paloalto/palo_alto_firewall_outgoing_allow.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/firewalls/paloalto/palo_alto_outgoing_deny.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/ids/ids_noise.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/proxy/squid_noise.json > /dev/null & echo $!
/home/adm-infra/punchplatform-standalone-3.3.5/bin/punchplatform-log-injector.sh -c /home/adm-infra/punchplatform-standalone-3.3.5/conf/resources/injector/demo/noise/windows/device_management_noise.json > /dev/null & echo $!
echo "Injection done"
