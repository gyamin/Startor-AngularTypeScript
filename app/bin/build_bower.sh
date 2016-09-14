#!/bin/bash
execDir=$(cd $(dirname $0); pwd)
baseDir=$(dirname ${execDir})

# copy bower components
# ---------------------------

# JavaScript
mkdir -p ${baseDir}/dist/js/lib
cp -f ${baseDir}/bower_components/angular/angular${1}.js ${baseDir}/dist/js/lib/
cp -f ${baseDir}/bower_components/jQuery/dist/jquery${1}.js ${baseDir}/dist/js/lib/
cp -f ${baseDir}/bower_components/bootstrap/dist/js/bootstrap${1}.js ${baseDir}/dist/js/lib/

# CSS
mkdir -p ${baseDir}/dist/css/lib
cp -f ${baseDir}/bower_components/bootstrap/dist/css/bootstrap${1}.css ${baseDir}/dist/css/lib/
cp -f ${baseDir}/bower_components/bootstrap/dist/css/bootstrap${1}.css.map ${baseDir}/dist/css/lib/
cp -f ${baseDir}/bower_components/bootstrap/dist/css/bootstrap-theme${1}.css ${baseDir}/dist/css/lib/
cp -f ${baseDir}/bower_components/bootstrap/dist/css/bootstrap-theme${1}.css.map ${baseDir}/dist/css/lib/