#!/bin/sh -eux
cat ../clientlog-server/src/index.html | HOST='' WSHOST='ws://localhost:8080' envsubst > index.html
elm-live src/Main.elm --output=elm.js --open
