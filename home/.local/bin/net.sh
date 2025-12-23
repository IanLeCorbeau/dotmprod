#!/bin/sh

CONNTYPE=$(ip route | awk '/default/ { print substr($5,1,1) }')
if [ -z "$CONNTYPE" ]; then
	echo "<icon>network-offline</icon><iconclick>netcon -u</iconclick>"
elif [ "$CONNTYPE" = "e" ]; then
	echo "<icon>network-transmit-receive</icon><iconclick>netcon -d</iconclick>"
fi
exit 0
