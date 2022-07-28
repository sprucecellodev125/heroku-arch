#!/bin/bash
export DYNO=ssh
export PORT=3000
node /pingme.js &
tmate -F