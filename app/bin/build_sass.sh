#!/bin/bash
execDir=$(cd $(dirname $0); pwd)
baseDir=$(dirname ${execDir})

# compile sass files
if [ $1 = "watch" ]; then
    ${baseDir}/node_modules/node-sass/bin/node-sass -w -r src/css -o dist/css
else
    ${baseDir}/node_modules/node-sass/bin/node-sass -r src/css -o dist/css
fi