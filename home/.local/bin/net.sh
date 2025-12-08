#!/bin/sh

CONNTYPE=$(ip route | awk '/default/ { print substr($5,1,1) }')
if [ -z "$CONNTYPE" ]; then
	echo "<icon>network-offline</icon>"
	echo "<txt> down  </txt>"
elif [ "$CONNTYPE" = "e" ]; then
	echo "<icon>network-transmit-receive</icon>"
	echo "<txt> up  </txt>"
fi
exit 0
