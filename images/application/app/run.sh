#!/bin/sh

cd usr/share/
mkdir app
cd app

username=${GIT_USERNAME:=""}
password=${GIT_TOKEN:=""}

if [ ! "$password" ]; then
    git clone https://github.com/waycambas8/dashboard-node.git stars
fi

if [ "$password" ]; then
    git clone https://${username}:${password}@github.com/waycambas8/dashboard-node.git stars
fi

/usr/bin/supervisord -n -c /etc/supervisord.conf
