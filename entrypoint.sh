#!/bin/sh

# Delete index.html if it exists
if [ -f /usr/share/nginx/html/index.html ]; then
    rm /usr/share/nginx/html/index.html
    echo "Default index.html removed"
fi

# Execute the original Nginx command
exec "$@"
