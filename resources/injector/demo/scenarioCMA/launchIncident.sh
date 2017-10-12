#!/bin/bash

echo "Starting log injecton ..."
echo "Malicious usb key ..."
punchplatform-log-injector.sh -c insert_malicious_usb.json
sleep 3

echo "Data leak ..."
for i in 1 2 3 4 5 6 7 8 9 10
do
	punchplatform-log-injector.sh -c checkpoint_out.json
	sleep 0.1
	punchplatform-log-injector.sh -c squid_out.json
	sleep 0.1
	punchplatform-log-injector.sh -c paloalto_out.json
	sleep 0.3
done
punchplatform-log-injector.sh -c inject_malware.json 
echo "Injection done"
