#!/bin/bash

ACTIVE=$(ps aux | grep bin/ags | grep -v grep)

if [[ -n "$ACTIVE" ]]; then
    ags -q
else
    ags 
fi
