#!/bin/bash
execDir=$(cd $(dirname $0); pwd)
baseDir=$(dirname ${execDir})

# deploy html files
if [ "${1}" = "watch" ]; then
    ${baseDir}/node_modules/watch/cli.js "cp -Rf ${baseDir}/src/pages ${baseDir}/dist/" ${baseDir}/src/pages
else
    cp -Rf ${baseDir}/src/pages ${baseDir}/dist/
fi