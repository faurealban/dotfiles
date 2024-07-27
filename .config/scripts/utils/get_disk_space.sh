#!/bin/bash

df /dev/dm-0 | grep / | awk '{ printf("%d", $5) }'
