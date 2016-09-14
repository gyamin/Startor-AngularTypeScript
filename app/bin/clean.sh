#!/bin/bash
execDir=$(cd $(dirname $0); pwd)
baseDir=$(dirname ${execDir})

# remove all builds files
rm -rf ${baseDir}/dist/js/*
rm -rf ${baseDir}/dist/css/*
rm -rf ${baseDir}/dist/pages/*

# remove only files
#find ${baseDir}/dist/js -type f | xargs rm -f {}
#find ${baseDir}/dist/css -type f | xargs rm -f {}