
#!/bin/sh

WORKDIR=/workdir
APP_START=$WORKDIR/app/start.sh

cat /README.md
echo "Starting $APP_START..."
$APP_START

