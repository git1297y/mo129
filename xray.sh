#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e44a0692-9b61-4ceb-85d5-7aa6871532c3"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

