#!/bin/bash
sleep 10;
httpStatus=$(curl -s --connect-time 5 -m 2 -w '%{http_code}' http://localhost/index.html -o /dev/null)
if [ "$httpStatus"  = "200" ]; then
    exit 0
else	
	exit 1
fi
