#!/bin/bash
execDir=$(cd $(dirname $0); pwd)
baseDir=$(dirname ${execDir})

# remove all builds files
find ${baseDir}/dist/js -type f | xargs rm -f {}
find ${baseDir}/dist/css -type f | xargs rm -f {}