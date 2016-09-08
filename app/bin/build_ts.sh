#!/bin/bash
execDir=$(cd $(dirname $0); pwd)
baseDir=$(dirname ${execDir})

# compile typescript files

if [ $1 = "watch" ]; then
    ${baseDir}/node_modules/typescript/bin/tsc -w
else
    ${baseDir}/node_modules/typescript/bin/tsc
fi