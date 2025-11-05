#!/bin/bash

if ! nc -z localhost 8080 &>/dev/null; then
    echo "Web server port 8080 is not available"
    exit 1
fi

if [ ! -f "/var/www/mysite/index.html" ]; then
    echo "index.html does not exist"
    exit 1
fi

if [ ! -s "/var/www/mysite/index.html" ]; then
    echo "index.html is empty"
    exit 1
fi

echo "Web server check passed"
exit 0
