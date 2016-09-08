#!/bin/bash
execDir=$(cd $(dirname $0); pwd)
baseDir=$(dirname ${execDir})

# copy bower components
cp -f ${baseDir}/bower_components/angular/angular${1}.js ${baseDir}/dist/js/lib/
cp -f ${baseDir}/bower_components/jQuery/dist/jquery${1}.js ${baseDir}/dist/js/lib/