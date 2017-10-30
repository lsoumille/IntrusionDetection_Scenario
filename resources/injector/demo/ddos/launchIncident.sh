#!/bin/bash

echo "Starting log injecton for DDOS ..."
echo "Inject logs from PaloAlto ..."
punchplatform-log-injector.sh -c palo_alto_firewall_allow.json > /dev/null & echo $!
echo "Inject logs from Proxy ..."
punchplatform-log-injector.sh -c squid.json > /dev/null & echo $!
echo "Inject logs from Apache ..."
punchplatform-log-injector.sh -c apache_httpd_injector.json > /dev/null & echo $!
echo "Injection done"

