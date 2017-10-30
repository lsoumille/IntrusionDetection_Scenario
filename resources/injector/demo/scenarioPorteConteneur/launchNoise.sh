#!/bin/bash

echo "Starting Noise Injecton ..."
punchplatform-log-injector.sh -c ../apache/apache_httpd_injector.json > /dev/null &
punchplatform-log-injector.sh -c ../unix/psad_noise.json >/dev/null &
punchplatform-log-injector.sh -c ../unix/rkhunter_noise.json > /dev/null &
punchplatform-log-injector.sh -c ../auth/active_directory_noise.json > /dev/null &
punchplatform-log-injector.sh -c ../av/symantec_daily_scan_noise.json > /dev/null &
punchplatform-log-injector.sh -c ../firewalls/checkpoint_firewall_ingoing_noise.json > /dev/null &
punchplatform-log-injector.sh -c ../firewalls/checkpoint_firewall_outgoing_noise.json > /dev/null &
punchplatform-log-injector.sh -c ../firewalls/palo_alto_firewall_noiseallow.json > /dev/null &
punchplatform-log-injector.sh -c ../firewalls/palo_alto_firewall_noisedeny.json > /dev/null &
punchplatform-log-injector.sh -c ../firewalls/palo_alto_firewall_outgoing_allow.json > /dev/null &
punchplatform-log-injector.sh -c ../firewalls/palo_alto_outgoing_deny.json > /dev/null &
punchplatform-log-injector.sh -c ../ids/ids_noise.json > /dev/null &
punchplatform-log-injector.sh -c ../proxy/squid_noise.json > /dev/null &
punchplatform-log-injector.sh -c ../windows/device_management_noise.json > /dev/null &
echo "Injection done"
