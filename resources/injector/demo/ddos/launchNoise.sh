#!/bin/bash

echo "Starting Noise Injecton ..."
punchplatform-log-injector.sh -c ../noise/apache/apache_httpd_injector.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/unix/psad_noise.json >/dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/unix/rkhunter_noise.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/auth/active_directory_noise.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/av/symantec_daily_scan_noise.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/firewalls/checkpoint/checkpoint_firewall_ingoing_noise.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/firewalls/checkpoint/checkpoint_firewall_outgoing_noise.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/firewalls/paloalto/palo_alto_firewall_noiseallow.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/firewalls/paloalto/palo_alto_firewall_noisedeny.json > /dev/null & echo $! 
punchplatform-log-injector.sh -c ../noise/firewalls/paloalto/palo_alto_firewall_outgoing_allow.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/firewalls/paloalto/palo_alto_outgoing_deny.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/ids/ids_noise.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/proxy/squid_noise.json > /dev/null & echo $!
punchplatform-log-injector.sh -c ../noise/windows/device_management_noise.json > /dev/null & echo $!
echo "Injection done"
