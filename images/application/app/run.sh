#!/bin/sh

cd usr/share/
mkdir app
cd app
mkdir stars
cd stars
npx express-generator
npm install -g express-generator
npm install

/usr/bin/supervisord -n -c /etc/supervisord.conf
